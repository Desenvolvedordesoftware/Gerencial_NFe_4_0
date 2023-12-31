unit venda_troca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Wwkeycb, StdCtrls, ExtCtrls, Collection, Mask, Buttons, Menus, DB, Grids, Wwdbigrd, Wwdbgrid, TFlatPanelUnit,
  AdvGlowButton, ZAbstractRODataset, ZAbstractDataset, ZDataset, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmvenda_troca = class(TForm)
    HeaderView1: THeaderView;
    HeaderView2: THeaderView;
    Label1: TLabel;
    ecodigo: TEdit;
    Label2: TLabel;
    EPRODUTO: TwwIncrementalSearch;
    Label3: TLabel;
    rqtde: TJvCalcEdit;
    Label4: TLabel;
    Label5: TLabel;
    runitario: TJvCalcEdit;
    Label6: TLabel;
    rtotal: TJvCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    ecodigo2: TEdit;
    Label9: TLabel;
    eproduto2: TwwIncrementalSearch;
    Label10: TLabel;
    rqtde2: TJvCalcEdit;
    Label11: TLabel;
    Label12: TLabel;
    runitario2: TJvCalcEdit;
    Label13: TLabel;
    rtotal2: TJvCalcEdit;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    lserial: TLabel;
    lserial2: TLabel;
    PPRODUTO: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    dsproduto: TDataSource;
    pproduto2: TFlatPanel;
    wwDBGrid2: TwwDBGrid;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Panel1: TPanel;
    rdiferenca: TJvCalcEdit;
    Bevel1: TBevel;
    Label15: TLabel;
    qrvendido: TZQuery;
    qrestoque: TZQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EPRODUTOEnter(Sender: TObject);
    procedure EPRODUTOExit(Sender: TObject);
    procedure EPRODUTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure EPRODUTOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eproduto2Enter(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure runitarioEnter(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure runitarioKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ecodigo2Enter(Sender: TObject);
    procedure ecodigo2Exit(Sender: TObject);
    procedure ecodigo2KeyPress(Sender: TObject; var Key: Char);
    procedure eproduto2Change(Sender: TObject);
    procedure eproduto2Exit(Sender: TObject);
    procedure eproduto2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eproduto2KeyPress(Sender: TObject; var Key: Char);
    procedure rqtde2Enter(Sender: TObject);
    procedure rqtde2Exit(Sender: TObject);
    procedure rqtde2KeyPress(Sender: TObject; var Key: Char);
    procedure runitario2Enter(Sender: TObject);
    procedure runitario2Exit(Sender: TObject);
    procedure runitario2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_troca: Tfrmvenda_troca;
  VER_PRODUTO: BOOLEAN;
  serial_grade: integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  serial_grade2: integer;
  codigo_serial_grade, codigo_serial_grade2: string;

implementation

uses principal, modulo, venda, venda_grade, venda_serial;

{$R *.dfm}

procedure Tfrmvenda_troca.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_troca.bgravarClick(Sender: TObject);
begin
  if ecodigo.text = '' then
  begin
    application.messagebox('Favor informar o produto de Entrada!', 'Aten��o!', mb_ok + MB_ICONWARNING);
    ecodigo.setfocus;
    exit;
  end;
  if ecodigo2.text = '' then
  begin
    application.messagebox('Favor informar o produto da Sa�da!', 'Aten��o!', mb_ok + MB_ICONWARNING);
    ecodigo2.setfocus;
    exit;
  end;


  /// ENTRADA ////

  if not FRMMODULO.qrproduto.Locate('CODIGO', ECODIGO.TEXT, [loCaseInsensitive]) then
  begin
    application.messagebox('Produto de ENTRADA n�o encontrado!', 'Aten��o!', mb_ok + MB_ICONWARNING);
    exit;
  end;



  frmvenda.qrvenda_produto.Insert;
  frmvenda.qrvenda_produto.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  frmvenda.qrvenda_produto.FieldByName('produto').asstring := 'TROCA/ENTRA - ' + frmmodulo.qrproduto.fieldbyname('produto').asstring;
  frmvenda.qrvenda_produto.FieldByName('NUMERACAO').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;

  frmvenda.qrvenda_produto.FieldByName('qtde').asfloat := (rqtde.value) * (-1);
  frmvenda.qrvenda_produto.FieldByName('unitario').asfloat := runitario.value;
  frmvenda.qrvenda_produto.FieldByName('total').asfloat := (rtotal.value) * (-1);
  frmvenda.qrvenda_produto.FieldByName('desconto').asfloat := 0;
  frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 10;
  frmvenda.qrvenda_produto.FieldByName('item').asstring := FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);
  frmvenda.qrvenda_produto.FieldByName('terminal').asSTRING := numero_terminal;
  item := item + 1;

  frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asFLOAT := 0;
  frmvenda.qrvenda_produto.FieldByName('CST').asSTRING := frmmodulo.qrproduto.fieldbyname('CST').asSTRING;


  if serial_grade = 1 then // serial
  begin
    frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial.CAPTION;

    frmvenda.qrproduto_serial.close;
    frmvenda.qrproduto_serial.sql.clear;
    frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmvenda.lcliente_codigo.Caption + ''' and situacao = 2 and serial = ''' + lserial.Caption + '''');
    frmvenda.qrproduto_serial.open;
    if frmvenda.qrproduto_serial.recordcount = 0 then
    begin
      application.messagebox('Serial de ENTRADA n�o encontrado!', 'Aten��o!', mb_ok + MB_ICONWARNING);
      exit;
    end;

    frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;
    frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 11;

    frmVENDA.QRPRODUTO_SERIAL.Edit;
    frmVENDA.QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger := 1;
    frmVENDA.QRPRODUTO_SERIAL.post;
  end;
  if serial_grade = 2 then // grade
  begin
    frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial.CAPTION;

    frmvenda.qrproduto_grade.close;
    frmvenda.qrproduto_grade.sql.clear;
    frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codigo = ''' + codigo_serial_grade + '''');
    frmvenda.qrproduto_grade.open;



    if frmvenda.qrproduto_grade.recordcount = 0 then
    begin
      application.messagebox('Grade de ENTRADA n�o encontrada!', 'Aten��o!', mb_ok + MB_ICONWARNING);
      exit;
    end;



    frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.QRPRODUTO_GRADE.fieldbyname('codigo').asstring;
    frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 12;

    frmVENDA.QRPRODUTO_GRADE.Edit;
    frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat := frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat + rqtde.value;
    frmVENDA.QRPRODUTO_GRADE.post;
  end;
  frmvenda.qrvenda_produto.post;



///////////////////////////////////////////////////////////////////






  /// sa�da ////

  if not FRMMODULO.qrproduto.Locate('CODIGO', ECODIGO2.TEXT, [loCaseInsensitive]) then
  begin
    application.messagebox('Produto de SA�DA n�o encontrado!', 'Aten��o!', mb_ok + MB_ICONWARNING);
    exit;
  end;

  frmvenda.qrvenda_produto.Insert;
  frmvenda.qrvenda_produto.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  frmvenda.qrvenda_produto.FieldByName('produto').asstring := 'TROCA/SAIDA - ' + frmmodulo.qrproduto.fieldbyname('produto').asstring;
  frmvenda.qrvenda_produto.FieldByName('NUMERACAO').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
  frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asFLOAT := frmmodulo.qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
  frmvenda.qrvenda_produto.FieldByName('CST').asSTRING := frmmodulo.qrproduto.fieldbyname('CST').asSTRING;

  frmvenda.qrvenda_produto.FieldByName('qtde').asfloat := rqtde2.value;
  frmvenda.qrvenda_produto.FieldByName('unitario').asfloat := runitario2.value;
  frmvenda.qrvenda_produto.FieldByName('total').asfloat := rtotal2.value;
  frmvenda.qrvenda_produto.FieldByName('desconto').asfloat := 0;
  frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 20;

  frmvenda.qrvenda_produto.FieldByName('item').asstring := FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);
  frmvenda.qrvenda_produto.FieldByName('terminal').asSTRING := numero_terminal;
  item := item + 1;

  if serial_grade2 = 1 then // serial
  begin
    frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial2.CAPTION;

    frmvenda.qrproduto_serial.close;
    frmvenda.qrproduto_serial.sql.clear;
    frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 and serial = ''' + lserial2.Caption + '''');
    frmvenda.qrproduto_serial.open;

    if frmvenda.qrproduto_serial.recordcount = 0 then
    begin
      application.messagebox('Serial de SA�DA n�o encontrado!', 'Aten��o!', mb_ok + MB_ICONWARNING);
      exit;
    end;

    frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;
    frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 21;

    frmVENDA.QRPRODUTO_SERIAL.Edit;
    frmVENDA.QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger := 2;
    frmVENDA.QRPRODUTO_SERIAL.fieldbyname('cliente').asstring := frmvenda.lcliente_nome.Caption;
    frmVENDA.QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.Caption;

    frmVENDA.QRPRODUTO_SERIAL.FieldByName('DATAVENDA').ASSTRING := frmvenda.lvenda_data.caption;
    frmvenda.qrproduto_serial.fieldbyname('codvenda').asstring := frmvenda.lvenda_codigo.Caption;
    frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat := runitario2.value;
    frmVENDA.QRPRODUTO_SERIAL.post;
  end;
  if serial_grade2 = 2 then // grade
  begin

    frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial2.CAPTION;
    frmvenda.qrproduto_grade.close;
    frmvenda.qrproduto_grade.sql.clear;
    frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codigo = ''' + codigo_serial_grade2 + '''');
    frmvenda.qrproduto_grade.open;


    if frmvenda.qrproduto_grade.recordcount = 0 then
    begin
      application.messagebox('Grade de SA�DA n�o encontrada!', 'Aten��o!', mb_ok + MB_ICONWARNING);
      exit;
    end;



    frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.QRPRODUTO_GRADE.fieldbyname('codigo').asstring;
    frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 22;

    frmVENDA.QRPRODUTO_GRADE.Edit;
    frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat := frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat - rqtde2.value;
    frmVENDA.QRPRODUTO_GRADE.post;
  end;
  frmvenda.qrvenda_produto.post;

  frmvenda.qrvenda_produto.Refresh;

  frmmodulo.qrproduto.Refresh;
  frmmodulo.Conexao.Commit;


  close;
end;

procedure Tfrmvenda_troca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_troca.ecodigoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  PPRODUTO.VISIBLE := FALSE;
end;

procedure Tfrmvenda_troca.ecodigoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_troca.ecodigoKeyPress(Sender: TObject; var Key: Char);
var cod_PROCURA: string;
begin
  if key = #13 then
  begin
    if ecodigo.Text <> '' then
    begin
      if frmmodulo.qrproduto.Locate('codbarra', ecodigo.text, [loCaseInsensitive]) then
      begin
        runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        rqtde.value := 1;
        rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

        ecodigo.Text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
        eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
        lserial.Caption := '---';

        serial_grade2 := 0;
        codigo_serial_grade := '';

        RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmvenda.qrproduto_grade.close;
          frmvenda.qrproduto_grade.sql.clear;
          frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo');
          frmvenda.qrproduto_grade.open;

          frmvenda_grade := tfrmvenda_grade.create(self);
          frmvenda_grade.showmodal;

          if selecionado then
          begin
            lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
            serial_grade := 2;
            codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
            RQTDE.SETFOCUS;
          end
          else
          begin
            ecodigo.setfocus;
          end;
        end
        else
        begin
            /// verificar se produto utiliza controle de seriais
          if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            frmvenda.qrproduto_serial.close;
            frmvenda.qrproduto_serial.sql.clear;
            frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmvenda.lcliente_codigo.Caption + ''' and situacao = 2 and serial = ''' + InputBox('TROCA - Produto', 'Informe o serial do Produto:', '') + '''');
            frmvenda.qrproduto_serial.open;

            if frmvenda.qrproduto_serial.RecordCount > 0 then
            begin
              lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade := 1;
              codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
              RQTDE.Enabled := FALSE;
              runitario.Value := frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat;
              rtotal.Value := frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat;
              RUNITARIO.SETFOCUS;
            end
            else
            begin
              application.messagebox('Serial n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
              eproduto.setfocus;
            end;
          end
          else
          begin
            rqtde.setfocus;
          end;
        end;

      end
      else
      begin

        if frmmodulo.qrproduto.Locate('codigo', ecodigo.text, [loCaseInsensitive]) then
        begin
          runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

          ecodigo.Text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          lserial.Caption := '---';

          serial_grade2 := 0;
          codigo_serial_grade := '';

          RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

          if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
          begin
            frmvenda.qrproduto_grade.close;
            frmvenda.qrproduto_grade.sql.clear;
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo');
            frmvenda.qrproduto_grade.open;

            frmvenda_grade := tfrmvenda_grade.create(self);
            frmvenda_grade.showmodal;

            if selecionado then
            begin
              lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
              serial_grade := 2;
              codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
              RQTDE.SETFOCUS;
            end
            else
            begin
              ecodigo.setfocus;
            end;
          end
          else
          begin
            /// verificar se produto utiliza controle de seriais
            if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
            begin
              frmvenda.qrproduto_serial.close;
              frmvenda.qrproduto_serial.sql.clear;
              frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmvenda.lcliente_codigo.Caption + ''' and situacao = 2 and serial = ''' + InputBox('TROCA - Produto', 'Informe o serial do Produto:', '') + '''');
              frmvenda.qrproduto_serial.open;

              if frmvenda.qrproduto_serial.RecordCount > 0 then
              begin
                lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
                serial_grade := 1;
                codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
                RQTDE.Enabled := FALSE;
                runitario.Value := frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat;
                rtotal.Value := frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat;
                RUNITARIO.SETFOCUS;
              end
              else
              begin
                application.messagebox('Serial n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
                eproduto.setfocus;
              end;
            end
            else
            begin
              rqtde.setfocus;
            end;
          end;




        end
        else
        begin
          application.messagebox('Produto n�o encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
          ecodigo.text := '';
          ecodigo.SetFocus;
        end;
      end;

    end
    else
    begin
      eproduto.setfocus;
    end;
  end;

end;

procedure Tfrmvenda_troca.EPRODUTOEnter(Sender: TObject);
begin



  tedit(sender).Color := $00A0FAF8;
  VER_PRODUTO := TRUE;
end;

procedure Tfrmvenda_troca.EPRODUTOExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;

//  VER_PRODUTO := FALSE;
//  PPRODUTO.VISIBLE := FALSE;
end;

procedure Tfrmvenda_troca.EPRODUTOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    if pproduto.Visible then
    begin
      WWDBGRID1.SETFOCUS;

    end;
  end;
end;

procedure Tfrmvenda_troca.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if EPRODUTO.TEXT <> '' then
    begin

      if frmmodulo.qrproduto.Locate('produto', eproduto.text, [loPartialKey]) then
      begin
        ecodigo.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
        runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        rqtde.value := 1;
        rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

        eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
        lserial.Caption := '---';

        serial_grade := 0;
        codigo_serial_grade := '';

        RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmvenda.qrproduto_grade.close;
          frmvenda.qrproduto_grade.sql.clear;
          frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo');
          frmvenda.qrproduto_grade.open;

          frmvenda_grade := tfrmvenda_grade.create(self);
          frmvenda_grade.showmodal;

          if selecionado then
          begin
            lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
            serial_grade := 2;
            codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
            RQTDE.SETFOCUS;
          end
          else
          begin
            eproduto.setfocus;
          end;
        end
        else
        begin
            /// verificar se produto utiliza controle de seriais
          if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            frmvenda.qrproduto_serial.close;
            frmvenda.qrproduto_serial.sql.clear;
            frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmvenda.lcliente_codigo.Caption + ''' and situacao = 2 and serial = ''' + InputBox('TROCA - Produto', 'Informe o serial do Produto:', '') + '''');
            frmvenda.qrproduto_serial.open;

            if frmvenda.qrproduto_serial.RecordCount > 0 then
            begin
              lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade := 1;
              codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
              RQTDE.Enabled := FALSE;
              runitario.Value := frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat;
              rtotal.Value := frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat;
              RUNITARIO.SETFOCUS;
            end
            else
            begin
              application.messagebox('Serial n�o encontrado!', 'Aten��o', mb_ok + MB_ICONWARNING);
              eproduto.setfocus;
            end;
          end
          else
          begin
            rqtde.setfocus;
          end;
        end;

      end
      else
      begin
        application.messagebox('Produto n�o encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
        eproduto.text := '';
        eproduto.SetFocus;
      end;
    end
    else
    begin
      ECODIGO.SetFocus;
    end;

  end;
end;

procedure Tfrmvenda_troca.EPRODUTOChange(Sender: TObject);
begin
  if EPRODUTO.Text <> '' then
  begin
    if VER_PRODUTO then
    begin
      PPRODUTO.Visible := TRUE;
    end;
  end
  else
  begin
    PPRODUTO.VISIBLE := FALSE;
  end;
end;

procedure Tfrmvenda_troca.FormCreate(Sender: TObject);
begin
  frmmodulo.qrproduto.Open;
  PPRODUTO.Top := 65;
  PPRODUTO.Left := 0;

  PPRODUTO2.Top := 187;
  PPRODUTO2.Left := 0;

  RQTDE.DisplayFormat := mascara_qtde;
  RQTDE.DecimalPlaces := decimal_qtde;

  RUNITARIO.DisplayFormat := mascara_valor;
  RUNITARIO.DecimalPlaces := decimal_valor;

end;

procedure Tfrmvenda_troca.eproduto2Enter(Sender: TObject);
begin



  tedit(sender).Color := $00A0FAF8;
  VER_PRODUTO := TRUE;
end;

procedure Tfrmvenda_troca.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #27 then EPRODUTO.SetFocus;
  if KEY = #13 then
  begin
    eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    ecodigo.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

    runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
    rqtde.value := 1;
    rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

    eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    lserial.Caption := '---';


    eproduto.SetFocus;
  end;
end;

procedure Tfrmvenda_troca.rqtdeEnter(Sender: TObject);
begin
  PPRODUTO.VISIBLE := FALSE;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_troca.runitarioEnter(Sender: TObject);
begin
  PPRODUTO.VISIBLE := FALSE;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_troca.wwDBGrid1DblClick(Sender: TObject);
begin
  eproduto.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
  ecodigo.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

  runitario.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
  rqtde.value := 1;
  rtotal.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

  eproduto.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
  lserial.Caption := '---';


  eproduto.SetFocus;
end;

procedure Tfrmvenda_troca.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_troca.runitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then ecodigo2.SetFocus;
end;

procedure Tfrmvenda_troca.rqtdeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  rtotal.value := rqtde.value * runitario.value;

  rdiferenca.Value := rtotal.value - rtotal2.value;

end;

procedure Tfrmvenda_troca.wwDBGrid2DblClick(Sender: TObject);
begin
  eproduto2.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
  ecodigo2.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

  runitario2.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
  rqtde2.value := 1;
  rtotal2.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

  eproduto2.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
  lserial2.Caption := '---';


  eproduto.SetFocus;
end;

procedure Tfrmvenda_troca.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #27 then EPRODUTO2.SetFocus;
  if KEY = #13 then
  begin
    eproduto2.text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    ecodigo2.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

    runitario2.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
    rqtde2.value := 1;
    rtotal2.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

    eproduto2.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
    lserial2.Caption := '---';


    eproduto2.SetFocus;
  end;
end;

procedure Tfrmvenda_troca.ecodigo2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  PPRODUTO2.VISIBLE := FALSE;
end;

procedure Tfrmvenda_troca.ecodigo2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_troca.ecodigo2KeyPress(Sender: TObject; var Key: Char);
var cod_PROCURA: string;
begin
  if key = #13 then
  begin
    if ecodigo2.Text <> '' then
    begin

      if frmmodulo.qrproduto.Locate('codbarra', ecodigo2.text, [loCaseInsensitive]) then
      begin



        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + '''');
        qrestoque.open;

        qrvendido.close;
        qrvendido.sql.clear;
        qrvendido.SQL.Add('select sum(qtde) quant from CL00001 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and terminal = ''' + numero_terminal + '''');
        qrvendido.Open;






        if not ESTOQUE_NEGATIVO then
        begin
          if (qrestoque.fieldbyname('estoque_atual').asfloat - qrvendido.fieldbyname('quant').asfloat) < 0.01 then
          begin
            APPLICATION.MESSAGEBOX('Este produto n�o possue ESTOQUE!', 'Aten��o', mb_ok + MB_ICONWARNING);
            ecodigo.setfocus;
            exit;
          end;
        end;



        runitario2.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        rqtde2.value := 1;
        rtotal2.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        ecodigo2.Text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
        eproduto2.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
        lserial2.Caption := '---';

        serial_grade2 := 0;
        codigo_serial_grade2 := '';

        rqtde2.Enabled := TRUE;

          //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmvenda.qrproduto_grade.close;
          frmvenda.qrproduto_grade.sql.clear;
          if estoque_negativo then
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo')
          else
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and estoque > 0 order by codigo');
          frmvenda.qrproduto_grade.open;

          frmvenda_grade := tfrmvenda_grade.create(self);
          frmvenda_grade.showmodal;

          if selecionado then
          begin
            lserial2.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
            serial_grade2 := 2;
            codigo_serial_grade2 := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
            rqtde2.SETFOCUS;
          end
          else
          begin
            ecodigo2.setfocus;
          end;
        end
        else
        begin
            /// verificar se produto utiliza controle de seriais
          if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            frmvenda.qrproduto_serial.close;
            frmvenda.qrproduto_serial.sql.clear;
            frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 order by codigo');
            frmvenda.qrproduto_serial.open;

            frmvenda_serial := tfrmvenda_serial.create(self);
            frmvenda_serial.showmodal;

            if selecionado then
            begin
              lserial2.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade2 := 1;
              codigo_serial_grade2 := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
              rqtde2.Enabled := FALSE;
              runitario2.SETFOCUS;
            end
            else
            begin
              ecodigo2.setfocus;
            end;

          end
          else
          begin
            rqtde2.setfocus;
          end;
        end;


      end
      else
      begin

        if frmmodulo.qrproduto.Locate('codigo', ecodigo2.text, [loCaseInsensitive]) then
        begin


          qrestoque.close;
          qrestoque.sql.clear;
          qrestoque.sql.add('select * from c000100 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + '''');
          qrestoque.open;

          qrvendido.close;
          qrvendido.sql.clear;
          qrvendido.SQL.Add('select sum(qtde) quant from CL00001 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' AND TERMINAL = ''' + NUMERO_TERMINAL + '''');
          qrvendido.Open;






          if not ESTOQUE_NEGATIVO then
          begin
            if (qrestoque.fieldbyname('estoque_atual').asfloat - qrvendido.fieldbyname('quant').asfloat) < 0.01 then
            begin
              APPLICATION.MESSAGEBOX('Este produto n�o possue ESTOQUE!', 'Aten��o', mb_ok + MB_ICONWARNING);
              ecodigo.setfocus;
              exit;
            end;
          end;





          runitario2.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
          rqtde2.value := 1;
          rtotal2.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

          eproduto2.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          lserial2.Caption := '---';

          serial_grade2 := 0;
          codigo_serial_grade2 := '';

          rqtde2.Enabled := TRUE;

          //// verificar se produto usa grade

          if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
          begin
            frmvenda.qrproduto_grade.close;
            frmvenda.qrproduto_grade.sql.clear;
            if estoque_negativo then
              frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo')
            else
              frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and estoque > 0 order by codigo');
            frmvenda.qrproduto_grade.open;

            frmvenda_grade := tfrmvenda_grade.create(self);
            frmvenda_grade.showmodal;

            if selecionado then
            begin
              lserial2.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
              serial_grade2 := 2;
              codigo_serial_grade2 := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
              rqtde2.SETFOCUS;
            end
            else
            begin
              ecodigo2.setfocus;
            end;
          end
          else
          begin
            /// verificar se produto utiliza controle de seriais
            if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
            begin
              frmvenda.qrproduto_serial.close;
              frmvenda.qrproduto_serial.sql.clear;
              frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 order by codigo');
              frmvenda.qrproduto_serial.open;

              frmvenda_serial := tfrmvenda_serial.create(self);
              frmvenda_serial.showmodal;

              if selecionado then
              begin
                lserial2.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
                serial_grade2 := 1;
                codigo_serial_grade2 := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
                rqtde2.Enabled := FALSE;
                runitario2.SETFOCUS;
              end
              else
              begin
                ecodigo2.setfocus;
              end;

            end
            else
            begin
              rqtde2.setfocus;
            end;
          end;




        end
        else
        begin
          application.messagebox('Produto n�o encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
          ecodigo2.text := '';
          ecodigo2.SetFocus;
        end;

      end;

    end
    else
    begin
      eproduto2.setfocus;
    end;
  end;


end;

procedure Tfrmvenda_troca.eproduto2Change(Sender: TObject);
begin
  if EPRODUTO2.Text <> '' then
  begin
    if VER_PRODUTO then
    begin
      PPRODUTO2.Visible := TRUE;
    end;
  end
  else
  begin
    PPRODUTO2.VISIBLE := FALSE;
  end;
end;

procedure Tfrmvenda_troca.eproduto2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_troca.eproduto2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    if pproduto2.Visible then
    begin
      WWDBGRID2.SETFOCUS;

    end;
  end;
end;

procedure Tfrmvenda_troca.eproduto2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if eproduto2.TEXT <> '' then
    begin

      if frmmodulo.qrproduto.Locate('produto', eproduto2.text, [loPartialKey]) then
      begin


        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + '''');
        qrestoque.open;

        qrvendido.close;
        qrvendido.sql.clear;
        qrvendido.SQL.Add('select sum(qtde) quant from CL00001 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and terminal = ''' + numero_terminal + '''');
        qrvendido.Open;






        if not ESTOQUE_NEGATIVO then
        begin
          if (qrestoque.fieldbyname('estoque_atual').asfloat - qrvendido.fieldbyname('quant').asfloat) < 0.01 then
          begin
            APPLICATION.MESSAGEBOX('Este produto n�o possue ESTOQUE!', 'Aten��o', mb_ok + MB_ICONWARNING);
            ecodigo.setfocus;
            exit;
          end;
        end;




        ecodigo2.text := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
        runitario2.Value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        rqtde2.value := 1;
        rtotal2.value := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

        eproduto2.Text := frmmodulo.qrproduto.fieldbyname('produto').asstring;
        lserial2.Caption := '---';

        serial_grade2 := 0;
        codigo_serial_grade2 := '';

        rqtde2.Enabled := TRUE;

          //// verificar se produto usa grade

        if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          frmvenda.qrproduto_grade.close;
          frmvenda.qrproduto_grade.sql.clear;
          if estoque_negativo then
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo')
          else
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and estoque > 0 order by codigo');
          frmvenda.qrproduto_grade.open;

          frmvenda_grade := tfrmvenda_grade.create(self);
          frmvenda_grade.showmodal;

          if selecionado then
          begin
            lserial2.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
            serial_grade2 := 2;
            codigo_serial_grade2 := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
            rqtde2.SETFOCUS;
          end
          else
          begin
            eproduto2.setfocus;
          end;
        end
        else
        begin
            /// verificar se produto utiliza controle de seriais
          if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            frmvenda.qrproduto_serial.close;
            frmvenda.qrproduto_serial.sql.clear;
            frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 order by codigo');
            frmvenda.qrproduto_serial.open;

            frmvenda_serial := tfrmvenda_serial.create(self);
            frmvenda_serial.showmodal;

            if selecionado then
            begin
              lserial2.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade2 := 1;
              codigo_serial_grade2 := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
              rqtde2.Enabled := FALSE;
              runitario2.SETFOCUS;
            end
            else
            begin
              ecodigo2.setfocus;
            end;
          end
          else
          begin
            rqtde2.setfocus;
          end;
        end;

      end
      else
      begin
        application.messagebox('Produto n�o encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
        eproduto2.text := '';
        eproduto2.SetFocus;
      end;
    end
    else
    begin
      ecodigo2.SetFocus;
    end;

  end;
end;

procedure Tfrmvenda_troca.rqtde2Enter(Sender: TObject);
begin
  PPRODUTO2.VISIBLE := FALSE;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_troca.rqtde2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  rtotal2.value := rqtde2.value * runitario2.value;

  rdiferenca.Value := rtotal.value - rtotal2.value;
end;

procedure Tfrmvenda_troca.rqtde2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_troca.runitario2Enter(Sender: TObject);
begin
  PPRODUTO2.VISIBLE := FALSE;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_troca.runitario2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  rtotal2.value := rqtde2.value * runitario2.value;

  rdiferenca.Value := rtotal.value - rtotal2.value;
end;

procedure Tfrmvenda_troca.runitario2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
