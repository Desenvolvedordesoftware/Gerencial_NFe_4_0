unit menu_cupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  DB, DBAccess, Menus, AdvMenus, ComCtrls, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton, Uni,
  JvExMask, JvToolEdit, MemDS, principal, frxClass, frxDBSet;

type
  TfrmCupom_Menu = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ed_data: TJvDateEdit;
    Label2: TLabel;
    ed_ecf: TEdit;
    Panel2: TPanel;
    Bevel2: TBevel;
    grid_cupom: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    BitBtn11: TBitBtn;
    bt_fechar1: TBitBtn;
  //  query: TIBCQuery;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn1: TAdvGlowButton;
    bt_fechar: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel3: TPanel;
    Panel4: TPanel;
    qrcupom: TUniQuery;
    query: TUniQuery;
    AdvGlowButton1: TAdvGlowButton;
    Reimpressao_venda: TAdvGlowButton;
    frxCupom_itens: TfrxDBDataset;
    UniQuery1: TUniQuery;
    frxDB: TfrxDBDataset;
    Frx_ImpressaoVenda: TfrxReport;
    frxEmitente: TfrxDBDataset;
    bt_cancelar_venda: TAdvGlowButton;
    can_venda: TUniQuery;
    Qremitente: TUniQuery;
    QremitenteCODIGO: TStringField;
    QremitenteNOME: TStringField;
    QremitenteFANTASIA: TStringField;
    QremitenteENDERECO: TStringField;
    QremitenteBAIRRO: TStringField;
    QremitenteCIDADE: TStringField;
    QremitenteUF: TStringField;
    QremitenteCEP: TStringField;
    QremitenteTELEFONE: TStringField;
    QremitenteCNPJ: TStringField;
    QremitenteIE: TStringField;
    QremitenteEMAIL: TStringField;
    QremitenteHOMEPAGE: TStringField;
    QremitenteRESPONSAVEL: TStringField;
    QremitenteCELULAR: TStringField;
    QremitenteLOGO: TBlobField;
    QremitenteFAX: TStringField;
    QremitenteNUMERO: TStringField;
    QremitenteCOMPLEMENTO: TStringField;
    QremitenteCONTRIBUINTE_IPI: TStringField;
    QremitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    QremitenteCOMENTARIOS: TStringField;
    QremitenteDATAHORA_INICIAL: TDateTimeField;
    QremitenteDATAHORA_FINAL: TDateTimeField;
    QremitenteDATA_INVENTARIO: TDateTimeField;
    QremitenteESTOQUE: TFloatField;
    QremitenteVALOR: TFloatField;
    QremitenteCONHECIMENTO: TIntegerField;
    QremitenteCPF: TStringField;
    QremitenteRG: TStringField;
    QremitenteDIA_VENCIMENTO_CHAVE: TStringField;
    QremitenteINSC_MUNICIPAL: TStringField;
    QremitenteDATA_ABERTURA: TDateTimeField;
    QremitenteCOD_MUNICIPIO_IBGE: TStringField;
    QremitenteIBGE: TStringField;
    QremitenteEMAIL_FINANCEIRO: TStringField;
    procedure bt_fechar1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_cupomCellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Reimpressao_vendaClick(Sender: TObject);
    procedure bt_cancelar_vendaClick(Sender: TObject);
  private
    { Private declarations }
    oldTipoImpressora: TImpressora;
    procedure AbreDados;
  public
    { Public declarations }
  end;

var
  frmCupom_Menu: TfrmCupom_Menu;

implementation

uses funcoes, modulo, cupom_impressao, menu_fiscal;

{$R *.dfm}

procedure TfrmCupom_Menu.bt_cancelar_vendaClick(Sender: TObject);
var
  //grid_cupom.Cell: string;
  i: integer;

begin

    if grid_cupom.RowCount = 0 then exit;
     if grid_cupom.SelectedRow < 0 then
  begin
    application.messagebox('Favor selecionar uma venda!','Erro',mb_ok+mb_iconerror);
    exit;
  end;
          begin
          BlockInput(false);
          if application.messagebox
            (pwidechar('Cancelar venda?' + #13 ), 'Aviso', mb_yesno + MB_ICONWARNING) = idno then
            exit;


          end;



      //cancelando venda no DB PDV

   query.close;
    query.sql.clear;
    query.sql.add(' delete from cupom ');
    query.sql.add(' where CODIGO LIKE ''%' +
    grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+ '%''');
    query.execsql;

    query.Close;
    query.sql.clear;
    query.sql.add(' delete from cupom_item ');
    query.sql.add(' where cod_cupom LIKE ''%' +
      grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+ '%''');
    query.ExecSQL;

    query.close;
    query.sql.clear;
    query.sql.add(' delete from cupom_forma ');
    query.sql.add(' where cod_cupom LIKE ''%' +
    grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+ '%''');
    query.execsql;

      //cancelando venda no DB servidor


    {Qremitente.close;
    Qremitente.sql.clear;
    Qremitente.sql.add(' delete from C000048 ');
    Qremitente.sql.add(' where numero_cupom_fiscal LIKE ''%' +
    grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+ '%''');
    Qremitente.execsql;}

    {Qremitente.close;
    Qremitente.sql.clear;
    Qremitente.sql.add(' delete from C000044 ');
    Qremitente.sql.add(' where HISTORICO LIKE ''%' +
    grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+ '%''');
    Qremitente.execsql;}

  Application.MessageBox('Venda cancelada com sucesso!', 'aviso', mb_ok + MB_ICONWARNING);
      exit;
end;





procedure TfrmCupom_Menu.bt_fechar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCupom_Menu.Reimpressao_vendaClick(Sender: TObject);
var
  rValor_Temp: real;
  i, icont: integer;
  rvalor_total_convenio: real;
  NomeArquivo, sCod_Cupom: string;
  bLanca_comprovante_crediario,
    bLanca_Comprovante_Prestacao: boolean;
  sCOO_crediario, sGNF_Crediario: string;
  sCOO_Prestacao, sGNF_Prestacao, sGRG_Prestacao: string;
  sIdentificarVendedor: string;

  str: string;
  SR: TSearchRec;
  Origem, Destino: string;
begin

     if grid_cupom.RowCount = 0 then exit;
     if grid_cupom.SelectedRow < 0 then
  begin
    application.messagebox('Favor selecionar uma venda!','Erro',mb_ok+mb_iconerror);
    exit;
  end;
          begin
          BlockInput(false);
          if application.messagebox
            (pwidechar('Reimpressao da venda?' + #13 ), 'Aviso', mb_yesno) = idno then
            exit;


          end;

  UniQuery1.close;
      UniQuery1.sql.clear;
      UniQuery1.sql.add('select CUPOM.*, CUPOM_FORMA.*, CLIENTE.*, vend.nome as venddor');
      UniQuery1.sql.add('FROM CUPOM, vendedores vend, CUPOM_FORMA, CLIENTE');
      //UniQuery1.sql.add('where CUPOM.cod_vendedor = vend.codigo and');
      UniQuery1.sql.add('where cod_cliente = cliente.codigo and');
      UniQuery1.sql.add('cupom.codigo = CUPOM_FORMA.cod_cupom');
      UniQuery1.sql.add('and CUPOM.codigo = '''+grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+'''');
      UniQuery1.ExecSQL;
      UniQuery1.open;

  query.close;
      query.sql.clear;
      query.sql.add('select item.*, prod.nome produto');
      query.sql.add('from cupom_item item, estoque prod');
      query.sql.add('where item.cod_produto = prod.codigo');
      query.sql.add('and item.cod_cupom = '''+grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+'''');
      query.ExecSQL;
      query.open;

    Frx_ImpressaoVenda.ShowReport();
   end;

procedure TfrmCupom_Menu.AbreDados;
begin
  qrcupom.Close;
  qrcupom.sql.clear;
  qrcupom.sql.add('select cupom.*,');
  qrcupom.sql.add('       cupom_consumidor.nome Consumidor');
  qrcupom.sql.add('from cupom, cupom_consumidor');
  qrcupom.sql.add('where');
  qrcupom.sql.add('  cupom.codigo = cupom_consumidor.codigo');
  qrcupom.sql.add('  and cupom.data = :data');
  qrcupom.sql.add('  and cupom.ecf = '''+sECF_Serial+'''');
  qrcupom.sql.add('order by cupom.numero');
  qrcupom.parambyname('data').asdatetime := ed_data.Date;
  qrcupom.open;

  grid_cupom.ClearRows;

  qrcupom.first;
  while not qrcupom.eof do
  begin
    grid_cupom.AddRow(1);
    grid_cupom.Cell[0,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('numero').asstring;
    grid_cupom.Cell[1,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('hora').asstring;
    grid_cupom.Cell[2,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('consumidor').asstring;
    grid_cupom.Cell[3,grid_cupom.LastAddedRow].Asfloat := qrcupom.fieldbyname('valor_total').asfloat;
    grid_cupom.Cell[4,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('codigo').asstring;
    grid_cupom.Cell[5,grid_cupom.LastAddedRow].Asinteger:= qrcupom.fieldbyname('cancelado').asinteger;
    qrcupom.Next;
  end;
  grid_cupom.SelectedRow := grid_cupom.LastAddedRow;
  grid_cupom.SetFocus;
end;

procedure TfrmCupom_Menu.AdvGlowButton1Click(Sender: TObject);
begin
  if ed_data.Date > 0 then
    AbreDados
  else
    Application.MessageBox('Informe uma data valida!','Aten��o!',MB_ICONINFORMATION);
end;

procedure TfrmCupom_Menu.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCupom_Menu.BitBtn11Click(Sender: TObject);
var i : integer;
begin
  if grid_cupom.RowCount = 0 then exit;
  if grid_cupom.SelectedRow < 0 then
  begin
    application.messagebox('Favor selecionar um cupom!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  frmcupom_impressao := Tfrmcupom_impressao.create(self);
  with frmcupom_impressao do
  begin
    grid_impressao.ClearRows;
    // fazendo o cabecario
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      texto_justifica('R E I M P R E S S A O    D E    C U P O M',48,' ',taCentralizado);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      texto_justifica('No: '+grid_cupom.Cell[0,grid_cupom.SelectedRow].asstring+
                      ' Data:'+ed_data.text+
                      ' Hora:'+grid_cupom.cell[1,grid_cupom.selectedrow].asstring,48,
                      ' ',taCentralizado);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      'Item Codigo        Descricao';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                    Qtde Un.  Vl.Unit    Vl.Item';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';

    // filtrando os itens
    query.close;
    query.sql.clear;
    query.sql.add('select cupom_item.*, estoque.nome nome_produto from cupom_item, estoque');
    query.sql.add('where cod_cupom = '''+grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+'''');
    query.sql.add('and cupom_item.cod_produto = estoque.codigo and cupom_item.cancelado = 0');
    query.sql.add('order by cupom_item.item');
    query.open;
    query.first;
    while not query.eof do
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :=
        texto_justifica(query.fieldbyname('item').asstring,3,'0',taDireita)+' '+
        texto_justifica(query.fieldbyname('cod_produto').asstring,13,'0',taDireita)+' '+
        texto_justifica(query.fieldbyname('nome_produto').asstring,30,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :='              '+
        texto_justifica(formatfloat('###,###,##0.000',query.fieldbyname('qtde').asfloat),10,' ',taDireita)+
        texto_justifica(query.fieldbyname('unidade').asstring,2,' ',taEsquerda)+' '+
        texto_justifica(formatfloat('###,###,##0.000',query.fieldbyname('valor_unitario').asfloat),10,' ',taDireita)+
        texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor_total').asfloat),11,' ',taDireita);

      if query.fieldbyname('valor_desconto').asfloat > 0 then
      begin
         grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :='              '+
           'Desconto:  -'+texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor_desconto').asfloat),8,' ',taDireita);
      end;
      if query.fieldbyname('valor_acrescimo').asfloat > 0 then
      begin
         grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :='              '+
           'Acr�scimo: +'+texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor_acrescimo').asfloat),8,' ',taDireita);
      end;
      query.next;
    end;

    // filtrar o cupom fiscal

    qrcupom.Close;
    qrcupom.sql.clear;
    qrcupom.sql.add('select cupom.*,');
    qrcupom.sql.add('       cupom_consumidor.*');
    qrcupom.sql.add('from cupom, cupom_consumidor');
    qrcupom.sql.add('where');
    qrcupom.sql.add('  cupom.codigo = cupom_consumidor.codigo');
    qrcupom.sql.add('  and cupom.data = :data');
    qrcupom.sql.add('  and cupom.ecf = '''+sECF_Serial+'''');
    qrcupom.sql.add('  and cupom.codigo = '''+grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+'''');
    qrcupom.sql.add('order by cupom.numero');
    qrcupom.parambyname('data').asdatetime := ed_data.Date;
    qrcupom.open;


    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                   Subtotal do Cupom:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_produto').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_desconto').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                           Acrescimo:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_acrescimo').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                      Total do Cupom:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_total').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';
    // filtrar os pagamentos

    query.close;
    query.sql.clear;
    query.sql.add('select * from cupom_forma where cod_cupom = '''+grid_cupom.cell[4,grid_cupom.selectedrow].asstring+'''');
    query.open;
    query.first;
    while not query.eof do
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica(query.fieldbyname('forma').asstring,36,' ',taDireita)+':'+texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor').asfloat),11,' ',taDireita);
      query.Next;
    end;
    if qrcupom.fieldbyname('valor_troco').asfloat > 0 then
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        '                               Troco:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_troco').asfloat),11,' ',taDireita);
    end;
    if qrcupom.FieldByName('nome').asstring <> '' then
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Nome....:'+qrcupom.fieldbyname('nome').asstring,48,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Endereco:'+qrcupom.fieldbyname('endereco').asstring,48,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Cidad/UF:'+qrcupom.fieldbyname('cidade').asstring+'/'+qrcupom.fieldbyname('uf').asstring,48,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('CPF.....:'+qrcupom.fieldbyname('cpf').asstring,48,' ',taEsquerda);
        grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';


      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      'Sistema - GCSistem';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';

      grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '-';



      if qrcupom.fieldbyname('placa').asstring <> '' then
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Placa...:'+qrcupom.fieldbyname('PLACA').asstring
      +'  Km: '+qrcupom.fieldbyname('km').asstring+' Vd: '+
      qrcupom.fieldbyname('vendedor').asstring,48,' ',taEsquerda);

    end;
  end;
  hide;
  frmcupom_impressao.ShowModal;
  show;
end;

procedure TfrmCupom_Menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPrincipal.TipoImpressora := oldTipoImpressora;
  action := cafree;
end;

procedure TfrmCupom_Menu.FormCreate(Sender: TObject);
begin
  oldTipoImpressora := frmPrincipal.TipoImpressora;
  frmPrincipal.TipoImpressora := NaoFiscal;
end;

procedure TfrmCupom_Menu.FormShow(Sender: TObject);
begin
  ed_data.Date := dData_Sistema;
  ed_ecf.Text := sECF_Serial;
  AbreDados;
end;

procedure TfrmCupom_Menu.grid_cupomCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if grid_cupom.Cell[5,arow].AsInteger = 1 then TextColor := clred;
end;

procedure TfrmCupom_Menu.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
