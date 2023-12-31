unit contasreceber_duplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, TFlatPanelUnit, Mask, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, wwdblook, AdvGlowButton, Menus, JvToolEdit,
  JvExMask, JvBaseEdits;

type
  Tfrmcontasreceber_duplicata = class(TForm)
    FlatPanel1: TFlatPanel;
    Label4: TLabel;
    rdesconto: TJvCalcEdit;
    Label5: TLabel;
    rliquido: TJvCalcEdit;
    Label6: TLabel;
    rprestacao: TJvCalcEdit;
    Label7: TLabel;
    rintervalo: TJvCalcEdit;
    Label8: TLabel;
    DateEdit1: TJvDateEdit;
    qrvenda_contasreceber: TZQuery;
    combotipo: TwwDBLookupCombo;
    dsvenda_contasreceber: TDataSource;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rvalor: TJvCalcEdit;
    rjuros: TJvCalcEdit;
    ratualizado: TJvCalcEdit;
    Label9: TLabel;
    racrescimo: TJvCalcEdit;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    wwDBGrid1: TwwDBGrid;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    query: TZQuery;
    qrtemp: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVALOR: TFloatField;
    qrvenda_contasreceberDOCUMENTO: TWideStringField;
    qrvenda_contasreceberTIPO: TWideStringField;
    qrvenda_contasreceberTERMINAL: TWideStringField;
    qrvenda_contasreceberVENCIMENTO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure rdescontoExit(Sender: TObject);
    procedure rdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rintervaloKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure qrvenda_contasreceberBeforePost(DataSet: TDataSet);
    procedure qrtempAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_duplicata: Tfrmcontasreceber_duplicata;

implementation

uses modulo, principal, contasreceber, extenso1;

{$R *.dfm}

procedure Tfrmcontasreceber_duplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_duplicata.FormShow(Sender: TObject);
begin
  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('delete from cl00002  where terminal = ''' + numero_terminal + '''');
  qrvenda_contasreceber.ExecSQL;

  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = ''' + numero_terminal + '''');
  qrvenda_contasreceber.open;


  frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';

end;

procedure Tfrmcontasreceber_duplicata.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_duplicata.rdescontoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  rliquido.Value := ratualizado.Value + racrescimo.Value - rdesconto.Value;
end;

procedure Tfrmcontasreceber_duplicata.rdescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontasreceber_duplicata.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.Text = '  /  /    ' then dateedit1.date := date;
end;

procedure Tfrmcontasreceber_duplicata.DateEdit1Exit(Sender: TObject);
begin
  tedit(SENDER).COLOR := clwindow;
end;

procedure Tfrmcontasreceber_duplicata.BitBtn1Click(Sender: TObject);
var valor: real;
  prestacao, i, dias: integer;
begin
  if rliquido.value = 0 then
  begin
    showmessage('O valor l�quido est� zerado!');
    exit;
  end;
  if dateedit1.text = '  /  /    ' then
  begin
    showmessage('Data de emiss�o n�o informada!');
    dateedit1.setfocus;
    exit;
  end;
  dias := trunc(rintervalo.Value);
  valor := rliquido.Value / rprestacao.Value;
  i := 0;

  prestacao := 1;

  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('delete from cl00002 where terminal = ''' + numero_terminal + '''');
  qrvenda_contasreceber.ExecSQL;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = ''' + numero_terminal + ''' order by prestacao');
  qrvenda_contasreceber.open;



  while i <> rprestacao.Value do
  begin

    qrvenda_contasreceber.Insert;
    qrvenda_contasreceber.FieldByName('prestacao').asinteger := prestacao;
    qrvenda_contasreceber.FieldByName('vencimento').asdatetime := dateedit1.Date + dias;
    qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
    qrvenda_contasreceber.FieldByName('documento').asstring := 'RENEGO/' + frmprincipal.zerarcodigo(INTTOSTR(PRESTACAO), 2);
    qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
    qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
    qrvenda_contasreceber.post;
    prestacao := prestacao + 1;
    dias := dias + trunc(rintervalo.value);
    i := i + 1;
  end;
  qrvenda_contasreceber.Refresh;
  wwdbgrid1.SetFocus;






end;

procedure Tfrmcontasreceber_duplicata.BCANCELARClick(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmcontasreceber_duplicata.BGRAVARClick(Sender: TObject);
var nfs: string;
  qnfs: integer;
  FATURA_NUMERO: string;
  FATURA_VALOR: string;
  tt: real;
begin
  try
    numero_venda := frmprincipal.codifica('000048');


    qrtemp.close;
    qrtemp.sql.clear;
    qrtemp.sql.add('delete from cl00001 where terminal = ''' + numero_terminal + '''');
    qrtemp.ExecSQL;

    qrtemp.sql.clear;
    qrtemp.SQL.add('select * from cl00001 where terminal = ''' + numero_terminal + '''');
    qrtemp.open;
    qnfs := 0;

    frmcontasreceber.qrcr.First;
    while not frmcontasreceber.QRCR.eof do
    begin
      frmcontasreceber.qrproduto_mov.close;
      frmcontasreceber.qrproduto_mov.SQL.clear;
      frmcontasreceber.qrproduto_mov.sql.add('update c000032 set codnota = ''' + numero_venda + ''' where codnota = ''' + frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring + ''' and movimento in (2,7) and codcliente = ''' + frmcontasreceber.qrcr.fieldbyname('codcliente').asstring + '''');
      frmcontasreceber.qrproduto_mov.execsql;

      if frmcontasreceber.qrcr.FieldByName('filtro').asinteger = 1 then
      begin
        frmcontasreceber.qrcontasreceber.Close;
        frmcontasreceber.qrcontasreceber.sql.clear;
        frmcontasreceber.qrcontasreceber.sql.Add('delete from c000049 where codigo = ''' + frmcontasreceber.qrcr.fieldbyname('codigo').asstring + '''');
        frmcontasreceber.qrcontasreceber.ExecSQL;


        qrtemp.insert;





        QUERY.Close;
        QUERY.SQL.CLEAR;
        QUERY.SQL.ADD('SELECT * FROM C000048 WHERE CODIGO = ''' + frmcontasreceber.QRCR.FIELDBYNAME('CODVENDA').ASSTRING + '''');
        QUERY.OPEN;
        if QUERY.RECORDCOUNT > 0 then
        begin
          qrtemp.fieldbyname('produto').asstring := QUERY.fieldbyname('NUMERO_cupom_fiscal').asstring;
          qrtemp.fieldbyname('total').asfloat := qUERY.fieldbyname('TOTAL').asfloat;
        end
        else
        begin
          qrtemp.fieldbyname('produto').asstring := frmcontasreceber.qrcr.fieldbyname('codvenda').asstring;
          qrtemp.fieldbyname('total').asfloat := frmcontasreceber.qrcr.fieldbyname('restante').asfloat;
        end;



        qrtemp.fieldbyname('terminal').asstring := numero_terminal;
        qrtemp.post;
        qnfs := qnfs + 1;
      end;

      frmcontasreceber.qrcr.next;


    end;

    qrtemp.refresh;

    nfs := '';
    if qnfs > 1 then
    begin
      fatura_numero := 'VARIAS';

      qrtemp.close;
      qrtemp.sql.clear;
      qrtemp.sql.add('select sum(total) total_geral, produto, total');
      qrtemp.sql.add('from cl00001 where terminal = ''' + numero_terminal + '''');
      qrtemp.sql.add('group by produto, total');
      qrtemp.open;
      qrtemp.first;
      tt := 0;
      while not qrtemp.eof do
      begin
        tt := qrtemp.fieldbyname('total_geral').asfloat + tt;

        nfs := nfs + frmprincipal.texto_justifica(qrtemp.fieldbyname('produto').asstring, 6, '0', 'D') + ' ' +
          frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', qrtemp.fieldbyname('TOTAL_GERAL').asFLOAT), 9, ' ', 'E') + ' ';
        qrtemp.next;
      end;
      fatura_valor := formatfloat('###,###,##0.00', tt);
    end
    else
    begin


      QUERY.Close;
      QUERY.SQL.CLEAR;
      QUERY.SQL.ADD('SELECT * FROM C000048 WHERE CODIGO = ''' + frmcontasreceber.QRCR.FIELDBYNAME('CODVENDA').ASSTRING + '''');
      QUERY.OPEN;
      if QUERY.RECORDCOUNT > 0 then
      begin
        FATURA_NUMERO := QUERY.fieldbyname('NUMERO_cupom_fiscal').asstring;
        FATURA_VALOR := formatfloat('###,###,##0.00', qUERY.fieldbyname('TOTAL').asfloat)
      end
      else
      begin
        FATURA_NUMERO := frmcontasreceber.qrcr.fieldbyname('codvenda').asstring;
        FATURA_VALOR := formatfloat('###,###,##0.00', frmcontasreceber.qrcr.fieldbyname('restante').asfloat);
      end;






    end;




    frmcontasreceber.qrcontasreceber.Close;
    frmcontasreceber.qrcontasreceber.sql.clear;
    frmcontasreceber.qrcontasreceber.sql.Add('select * from c000049 where codigo = ''nenhum''');
    frmcontasreceber.qrcontasreceber.open;





    qrvenda_contasreceber.First;
    while not qrvenda_contasreceber.eof do
    begin
      frmcontasreceber.qrcontasreceber.insert;
      frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring := numero_venda + '/' + frmprincipal.zerarcodigo(qrvenda_contasreceber.fieldbyname('prestacao').asstring, 2);
      frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring := numero_venda;
      frmcontasreceber.qrcontasreceber.fieldbyname('codcliente').asstring := FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING;
      frmcontasreceber.qrcontasreceber.fieldbyname('codvendedor').asstring := codigo_vendedor;
      frmcontasreceber.qrcontasreceber.fieldbyname('codcaixa').asstring := '000099';
      frmcontasreceber.qrcontasreceber.fieldbyname('data_emissao').asstring := DATEEDIT1.TEXT;
      frmcontasreceber.qrcontasreceber.fieldbyname('data_vencimento').asstring := qrvenda_contasreceber.fieldbyname('vencimento').asstring;
      frmcontasreceber.qrcontasreceber.fieldbyname('valor_original').asfloat := qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat := qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring := qrvenda_contasreceber.fieldbyname('documento').asstring;
      frmcontasreceber.qrcontasreceber.fieldbyname('tipo').asstring := QRVENDA_CONTASRECEBER.FIELDBYNAME('TIPO').ASSTRING;
      frmcontasreceber.qrcontasreceber.FieldByName('situacao').asinteger := 1;
      frmcontasreceber.qrcontasreceber.FieldByName('filtro').asinteger := 0;
      frmcontasreceber.qrcontasreceber.post;
      qrvenda_contasreceber.next;
    end;



    frmmodulo.Conexao.Commit;

    frmcontasreceber.qrcontasreceber.close;
    frmcontasreceber.qrcontasreceber.sql.clear;
    frmcontasreceber.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + numero_venda + ''' order by data_vencimento');
    frmcontasreceber.qrcontasreceber.open;
    frmcontasreceber.qrcontasreceber.First;


    with frmcontasreceber do
    begin
      qrduplicata.open;
      while qrduplicata.recordcount <> 0 do qrduplicata.delete;
      qrduplicata.Refresh;


      qrcontasreceber.first;
      while not qrcontasreceber.Eof do
      begin







        qrduplicata.insert;
        qrduplicata.fieldbyname('emitente_fantasia').asstring := emitente_fantasia;
        qrduplicata.fieldbyname('emitente_RAZAO').asstring := emitente_nome;
        qrduplicata.fieldbyname('emitente_telefone').asstring := 'Fone: ' + emitente_telefone;
        qrduplicata.fieldbyname('emitente_endereco').asstring := emitente_endereco + ' - ' + emitente_cidade + ' - ' + emitente_cep;
        qrduplicata.fieldbyname('emitente_cnpj').asstring := emitente_cnpj;
        qrduplicata.fieldbyname('emitente_ie').asstring := emitente_ie;
        qrduplicata.fieldbyname('FATURA_NUMERO').asstring := fatura_numero;
        qrduplicata.fieldbyname('fatura_valor').asstring := fatura_valor;
        qrduplicata.fieldbyname('duplicata_numero').asstring := qrcontasreceber.fieldbyname('codigo').asstring;
        qrduplicata.fieldbyname('duplicata_valor').asstring := formatfloat('###,###,##0.00', qrcontasreceber.fieldbyname('restante').asfloat);
        qrduplicata.fieldbyname('data_vencimento').asstring := qrcontasreceber.fieldbyname('data_vencimento').asstring;
        qrduplicata.fieldbyname('data_emissao').asstring := qrcontasreceber.fieldbyname('data_emissao').asstring;
        qrduplicata.fieldbyname('extenso').asstring := AnsiUpperCase(extenso(qrcontasreceber.fieldbyname('restante').asfloat));
        qrduplicata.fieldbyname('notas_ficais').asstring := nfs;
        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select * from c000007 where codigo = ''' + qrcontasreceber.fieldbyname('codcliente').asstring + '''');
        qrcliente.Open;
        qrduplicata.fieldbyname('sacado_nome').asstring := qrcliente.fieldbyname('nome').asstring;
        qrduplicata.fieldbyname('sacado_endereco').asstring := qrcliente.fieldbyname('endereco').asstring + ' ' + qrcliente.fieldbyname('bairro').asstring;
        qrduplicata.fieldbyname('sacado_municipio').asstring := qrcliente.fieldbyname('cidade').asstring;
        qrduplicata.fieldbyname('sacado_uf').asstring := qrcliente.fieldbyname('uf').asstring;
        qrduplicata.fieldbyname('sacado_cep').asstring := qrcliente.fieldbyname('cep').asstring;
        qrduplicata.fieldbyname('sacado_cnpj').asstring := qrcliente.fieldbyname('cpf').asstring;
        qrduplicata.fieldbyname('sacado_ie').asstring := qrcliente.fieldbyname('rg').asstring;
        qrduplicata.fieldbyname('sacado_praca').asstring := emitente_cidade;
        qrduplicata.post;

        qrduplicata.SortOnFields('duplicata_numero');

        qrcontasreceber.next;
      end;

      FXduplicata.LoadFromFile('\SQL_Gerencial\server\rel\f000150.fr3');
      FXduplicata.ShowReport;
    end;


    FRMCONTASRECEBER.bfiltrarClick(FRMCONTASRECEBER);
  except

  end;


  close;

end;

procedure Tfrmcontasreceber_duplicata.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then BGRAVAR.SETFOCUS;
end;

procedure Tfrmcontasreceber_duplicata.rintervaloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then BITBTN1.SETFOCUS;
end;

procedure Tfrmcontasreceber_duplicata.Fechar1Click(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmcontasreceber_duplicata.qrvenda_contasreceberBeforePost(
  DataSet: TDataSet);
begin
  qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

procedure Tfrmcontasreceber_duplicata.qrtempAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexaolocal.commit;
end;

end.
