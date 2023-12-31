unit boleto_avulso;

{$IFDEF VER140}
{$DEFINE USAVARIANTS}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE USAVARIANTS}
{$ENDIF}


interface

uses
  Windows, Messages, SysUtils, {$IFDEF USAVARIANTS}Variants, {$ENDIF}ComObj,
  Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, TFlatPanelUnit, Mask, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, wwdblook, Menus, JvToolEdit, JvExMask, JvBaseEdits;

type
  Tfrmboleto_avulso = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    Label4: TLabel;
    rdesconto: TJvCalcEdit;
    Label5: TLabel;
    rliquido: TJvCalcEdit;
    Label6: TLabel;
    rprestacao: TJvCalcEdit;
    Label7: TLabel;
    rintervalo: TJvCalcEdit;
    bgerar: TBitBtn;
    Label8: TLabel;
    DateEdit1: TJvDateEdit;
    qrvenda_contasreceber: TZQuery;
    combotipo: TwwDBLookupCombo;
    dsvenda_contasreceber: TDataSource;
    FlatPanel2: TFlatPanel;
    BCANCELAR: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    ViewSplit2: TViewSplit;
    BGRAVAR: TBitBtn;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rvalor: TJvCalcEdit;
    rjuros: TJvCalcEdit;
    ratualizado: TJvCalcEdit;
    Label9: TLabel;
    racrescimo: TJvCalcEdit;
    FlipPanel1: TFlipPanel;
    ViewSplit3: TViewSplit;
    Label10: TLabel;
    COMBOCONTA: TwwDBLookupCombo;
    Label11: TLabel;
    ebanco: TEdit;
    Label12: TLabel;
    eagencia: TEdit;
    Label13: TLabel;
    econta: TEdit;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    eobs1: TEdit;
    Label15: TLabel;
    eobs2: TEdit;
    bcobrebem: TButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    BMATRICIAL: TButton;
    FlatPanel4: TFlatPanel;
    combo_pagamento: TComboBox;
    Label16: TLabel;
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
    procedure bgerarClick(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure COMBOCONTAExit(Sender: TObject);
    procedure COMBOCONTAEnter(Sender: TObject);
    procedure COMBOCONTAKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure eobs2KeyPress(Sender: TObject; var Key: Char);
    procedure bcobrebemClick(Sender: TObject);
    procedure BMATRICIALClick(Sender: TObject);
    procedure combo_pagamentoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmboleto_avulso: Tfrmboleto_avulso;

implementation

uses modulo, principal, contasreceber, contasreceber_boleto, notafiscal;

{$R *.dfm}

procedure Tfrmboleto_avulso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmboleto_avulso.FormShow(Sender: TObject);
begin
  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('delete from cl00002  where terminal = ''' + numero_terminal + '''');
  qrvenda_contasreceber.ExecSQL;

  qrvenda_contasreceber.close;
  qrvenda_contasreceber.sql.clear;
  qrvenda_contasreceber.SQL.Add('select * from cl00002 where  terminal = ''' + numero_terminal + '''');
  qrvenda_contasreceber.open;




  frmmodulo.qrcontacorrente.close;
  frmmodulo.qrcontacorrente.SQL.clear;
  frmmodulo.qrcontacorrente.sql.add('select * from c000041 order by TITULAR');
  frmmodulo.qrcontacorrente.Open;


  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.sql.add('select * from c000013 order by banco');
  frmmodulo.qrbanco.Open;

  frmmodulo.qrconfig_cobrebem.close;
  frmmodulo.qrconfig_cobrebem.SQL.clear;
  frmmodulo.qrconfig_cobrebem.sql.add('select * from c000064 order by descricao');
  frmmodulo.qrconfig_cobrebem.Open;

  frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';

end;

procedure Tfrmboleto_avulso.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmboleto_avulso.rdescontoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  rliquido.Value := ratualizado.Value + racrescimo.Value - rdesconto.Value;
end;

procedure Tfrmboleto_avulso.rdescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmboleto_avulso.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.Text = '  /  /    ' then dateedit1.date := date;
end;

procedure Tfrmboleto_avulso.DateEdit1Exit(Sender: TObject);
begin
  tedit(SENDER).COLOR := clwindow;
end;

procedure Tfrmboleto_avulso.bgerarClick(Sender: TObject);
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
    qrvenda_contasreceber.FieldByName('documento').asstring := 'BOLETO/' + frmprincipal.zerarcodigo(INTTOSTR(PRESTACAO), 2);
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

procedure Tfrmboleto_avulso.BCANCELARClick(Sender: TObject);
begin
  frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmboleto_avulso.BGRAVARClick(Sender: TObject);
begin
{
 try

  numero_venda := frmprincipal.codifica('000048');

   frmcontasreceber.qrcontasreceber.First;
   while not frmcontasreceber.QRCONTASRECEBER.eof do
   begin

    frmcontasreceber.qrproduto_mov.close;
    frmcontasreceber.qrproduto_mov.SQL.clear;
    frmcontasreceber.qrproduto_mov.sql.add('update c000032 set codnota = '''+numero_venda+''' where codnota = '''+frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring+''' and movimento in (2,7) and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');
    frmcontasreceber.qrproduto_mov.execsql;



     if frmcontasreceber.qrcontasreceber.FieldByName('filtro').asinteger = 1 then
     begin
       frmcontasreceber.qrcontasreceber.delete;
     end
     else
     begin
       frmcontasreceber.qrcontasreceber.next;
     end;
   end;








    FRMMODULO.QRCONFIG.OPEN;

    qrvenda_contasreceber.First;
    while not qrvenda_contasreceber.eof do
    begin
      frmcontasreceber.qrcontasreceber.insert;
      frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring          := numero_venda+'/'+frmprincipal.zerarcodigo(qrvenda_contasreceber.fieldbyname('prestacao').asstring,2);
      frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring        := numero_venda;
      frmcontasreceber.qrcontasreceber.fieldbyname('codcliente').asstring      := FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING;
      frmcontasreceber.qrcontasreceber.fieldbyname('codvendedor').asstring     := codigo_vendedor;
      frmcontasreceber.qrcontasreceber.fieldbyname('codcaixa').asstring        := '000099';
      frmcontasreceber.qrcontasreceber.fieldbyname('data_emissao').asstring    := DATEEDIT1.TEXT;
      frmcontasreceber.qrcontasreceber.fieldbyname('data_vencimento').asstring := qrvenda_contasreceber.fieldbyname('vencimento').asstring;
      frmcontasreceber.qrcontasreceber.fieldbyname('valor_original').asfloat   := qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat      := qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring       := qrvenda_contasreceber.fieldbyname('documento').asstring;
//      frmcontasreceber.qrcontasreceber.fieldbyname('tipo').asstring            := qrvenda_contasreceber.fieldbyname('tipo').asstring;
      frmcontasreceber.qrcontasreceber.fieldbyname('tipo').asstring            := FRMMODULO.QRCONFIG.FieldBYNAME('BOLETO_FORMAPGTO').ASSTRING;
      frmcontasreceber.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmcontasreceber.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      FRMCONTASRECEBER.QRCONTASRECEBER.FIELDBYNAME('CODCEDENTE').ASSTRING      := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('CODIGO').ASSTRING;
      frmcontasreceber.qrcontasreceber.post;
      qrvenda_contasreceber.next;
    end;
    frmmodulo.Conexao.Commit;
    frmcontasreceber.qrcontasreceber.close;
    frmcontasreceber.qrcontasreceber.sql.clear;
    frmcontasreceber.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+numero_venda+''' order by data_vencimento');
    frmcontasreceber.qrcontasreceber.open;
    frmcontasreceber.qrcontasreceber.First;


    IF FRMMODULO.qrconfig_cobrebem.FieldByName('TIPO').ASINTEGER = 1 THEN // BOLETO COBREBEM
    BEGIN
      bcobrebemClick(frmcontasreceber_boleto);
    END
    ELSE
    BEGIN // BOLETO NORMAL
      BMATRICIALCLICK(frmcontasreceber_boleto);

    END;
  except
  end;


}

  BMATRICIALCLICK(frmboleto_avulso);


  //FRMCONTASRECEBER.bfiltrarClick(FRMCONTASRECEBER);
  close;

end;

procedure Tfrmboleto_avulso.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then comboconta.SETFOCUS;
end;

procedure Tfrmboleto_avulso.COMBOCONTAExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
  if COMBOCONTA.TEXT <> '' then
  begin
    if FRMMODULO.qrconfig_cobrebem.Locate('descricao', COMBOCONTA.TEXT, [loCaseInsensitive]) then
    begin
      eagencia.text := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('AGENCIA').ASSTRING;
      ebanco.text := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('BANCO').ASSTRING;
      econta.text := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('codconta').ASSTRING;

      EDIT1.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_1').ASSTRING;
      EDIT2.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_2').ASSTRING;
      EDIT3.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_3').ASSTRING;



    end
    else
    begin
      APPLICATION.MESSAGEBOX('Cedente/Conta n�o localizado!', 'Aten��o', mb_ok + MB_ICONERROR);
      comboconta.setfocus;

    end;
  end;
end;

procedure Tfrmboleto_avulso.COMBOCONTAEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmboleto_avulso.COMBOCONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmboleto_avulso.Edit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmboleto_avulso.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmboleto_avulso.eobs2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmboleto_avulso.bcobrebemClick(Sender: TObject);
var
  CobreBemX: Variant;
  Boleto: Variant;

  texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11, texto12, texto13, texto14, texto15, texto16: string;
  proximonumero, arquivoremessa: integer;
begin



  CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
  CobreBemX.ArquivoLicenca := frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_CONFIGURACAO').asstring;


     //----------------------------------- ARQUIVO DE REMESSA ---------------------\\
  if frmmodulo.qrconfig_cobrebem.FieldByName('REMESSA_UTILIZA').Asinteger = 1 then
  begin
    CobrebemX.ArquivoRemessa.Layout := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_layout').asstring;
    CobreBemX.ArquivoRemessa.Arquivo := 'R_' + copy(datetostr(date), 1, 2) + copy(datetostr(date), 4, 2) + copy(datetostr(date), 7, 4) + '_' + copy(timetostr(time), 1, 2) + copy(timetostr(time), 4, 2) + '.txt';
    CobreBemX.ArquivoRemessa.Diretorio := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_local').asstring; ;
    CobrebemX.ArquivoRemessa.Sequencia := frmprincipal.zerarcodigo(inttostr(Frmmodulo.qrconfig_cobrebem.fieldbyname('REMEsSA_SEQUENCIA').asINTEGER), 5); //'00015';
    arquivoremessa := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_sequencia').asinteger;
  end;
     //-----------------------------------------------------------------------------\\




     //----------------------------------- INFORMACOES DA CONTA -------------------------------\\
  CobreBemX.CodigoAgencia := frmmodulo.qrconfig_cobrebem.fieldbyname('agencia').asstring;
  CobreBemX.NumeroContaCorrente := frmmodulo.qrconfig_cobrebem.fieldbyname('codconta').asstring;
  CobreBemX.CodigoCedente := frmmodulo.qrconfig_cobrebem.fieldbyname('codigo_cedente').asstring;
  CobreBemX.InicioNossoNumero := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_INICIO').asstring;
  CobreBemX.FimNossoNumero := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_FIM').asstring;
  CobreBemX.ProximoNossoNumero := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring;

  proximonumero := strtoint(frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring);


  if frmmodulo.qrconfig_cobrebem.fieldbyname('VARIACAO_MODALIDADE').asstring <> '' then
  begin
    CobreBemX.OutroDadoConfiguracao1 := frmmodulo.qrconfig_cobrebem.fieldbyname('VARIACAO_MODALIDADE').asstring;
  end;


     //----------------------------------- CONFIGURACOES DO BOLETO -----------------------------\\
  CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_LOGOMARCA').asstring;
  CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := '\SQL_Gerencial\server\cob\CobreBemX\Imagens\';



  if frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO_BOLETO').asstring = 'Padrao' then
  begin
       //

  end
  else
  begin
    Cobrebemx.padroesboleto.padroesboletoimpresso.LayoutBoleto := frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO_BOLETO').asstring; //'CarnetReciboLateralEsquerda';
  end;
  if frmmodulo.qrconfig_cobrebem.fieldbyname('MARGEM_SUPERIOR').asinteger > 0 then
    Cobrebemx.padroesboleto.padroesboletoimpresso.MargemSuperior := frmmodulo.qrconfig_cobrebem.fieldbyname('MARGEM_SUPERIOR').asinteger; //4;

  texto := '<font face="Courier New" size = "">' + EDIT1.TEXT +
    '<br> ' + EDIT2.TEXT +
    '<br> ' + EDIT3.TEXT +
    '<br> ' + '' +
    '<br> ' + EOBS1.TEXT +
    '<br> ' + EOBS2.TEXT +
    '<br> ' + '' + '</font>';

//     frmmodulo.qrcliente.close;
//     frmmodulo.qrcliente.sql.Clear;
//     frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+'''');
//     frmmodulo.qrcliente.open;
//     if frmmodulo.qrcliente.RecordCount > 0 then
//     begin
  frmcontasreceber.qrcontasreceber.First;
  while not frmcontasreceber.qrcontasreceber.Eof do
  begin

    Boleto := CobreBemX.DocumentosCobranca.Add;
    Boleto.NumeroDocumento := frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring;
    Boleto.NomeSacado := frmmodulo.qrcliente.fieldbyname('nome').asstring;
    Boleto.CPFSacado := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
    Boleto.EnderecoSacado := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
    Boleto.BairroSacado := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
    Boleto.CidadeSacado := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
    Boleto.EstadoSacado := frmmodulo.qrcliente.fieldbyname('uf').asstring;
    Boleto.CepSacado := frmprincipal.somenteNumero(frmmodulo.qrcliente.fieldbyname('cep').asstring);
    Boleto.DataDocumento := frmcontasreceber.qrcontasreceber.fieldbyname('data_emissao').asstring;
    Boleto.DataVencimento := frmcontasreceber.qrcontasreceber.fieldbyname('data_vencimento').asstring;
    Boleto.ValorDocumento := frmcontasreceber.qrcontasreceber.fieldbyname('restante').asfloat;
    Boleto.PadroesBoleto.Demonstrativo := texto;
    Boleto.PadroesBoleto.InstrucoesCaixa := '<br>' + edit1.text + '<br>' + edit2.text + '<br>' + edit3.text;
    CobreBemX.CalcularDadosBoletos;
    proximonumero := proximonumero + 1;


//         Boleto.LinhaDigitavel

    frmcontasreceber.qrcontasreceber.Edit;
    frmcontasreceber.qrcontasreceber.fieldbyname('nossonumero').asstring := Boleto.nossonumero;
    FRMCONTASRECEBER.QRCONTASRECEBER.FIELDBYNAME('CODCEDENTE').ASSTRING := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('CODIGO').ASSTRING;
    frmcontasreceber.qrcontasreceber.post;




    frmcontasreceber.qrcontasreceber.next;
  end;
//     end;
     //------- IMPRIMIR BOLETOS -------\\\
  CobreBemX.ImprimeBoletos;




  if frmmodulo.qrconfig_cobrebem.FieldByName('REMESSA_UTILIZA').Asinteger = 1 then
  begin
    if application.MessageBox('Deseja gerar remessa?', 'Aviso', mb_yesno + mb_iconquestion) = idyes then
    begin
      arquivoremessa := arquivoremessa + 1;
      CobreBemX.GravaArquivoRemessa;
    end;
  end;


  //CobreBemX := Unassigned;



  texto := inttostr(proximonumero);
  while length(texto) < 4 do texto := '0' + texto;

  frmmodulo.qrconfig_cobrebem.Edit;
  frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring := texto;
  frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_sequencia').asinteger := arquivoremessa;
  frmmodulo.qrconfig_cobrebem.post;

  frmmodulo.Conexao.Commit;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.Clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;




end;

procedure Tfrmboleto_avulso.BMATRICIALClick(Sender: TObject);
var
  f: textfile;
  vencimento, data_doc, numero_doc, especie_doc, aceite, especie, qtde, valor,
    valor_doc, desconto, outras, mora, outros, valor_cobrado, inst1, inst2, inst3, inst4, inst5, inst6,
    cedente, cedente_ender: string;
  LINHAS: array[1..50] of string;
  TEXTO: string;
  vpaga, boleto: string;

  I, x, Y, LINHA_ACERTO: INTEGER;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20


  LINHA_ACERTO := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('ACERTO_ENTRE_LINHAS').ASinteger;



  // showmessage(impressora_venda);
  // 'c:\boleto.prn'

  assignfile(f, impressora_venda);
  rewrite(f);

  if combo_pagamento.ItemIndex = 0 then

  else

    case combo_pagamento.ItemIndex of
      0: vpaga := 'BOLETO.';
      2: VPAGA := 'DUPLICATA.';
      3: VPAGA := 'PROMISS�RIA.';
    end;

//  frmmodulo.qrcliente.close;
//  frmmodulo.qrcliente.sql.Clear;
//  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+'''');
//  frmmodulo.qrcliente.open;
//  if frmmodulo.qrcliente.RecordCount > 0 then
//  begin
  qrvenda_contasreceber.first;
  while not qrvenda_contasreceber.Eof do
  begin

    VENCIMENTO := FRMPRINCIPAL.texto_justifica(qrvenda_contasreceber.fieldbyname('vencimento').asstring, 10, ' ', 'E');
    DATA_DOC := frmmodulo.qrnotafiscalDATA.AsString; //FRMPRINCIPAL.texto_justifica(qrvenda_contasreceber.fieldbyname('data').asstring,10,' ','E');
    NUMERO_DOC := frmnotafiscal.ENUMERO.Text; //FRMPRINCIPAL.texto_justifica(frmnotafiscal.ENUMERO.fieldbyname('CODIGO').asstring,20,' ','E');
    ESPECIE_DOC := FRMPRINCIPAL.texto_justifica(vpaga, 12, ' ', 'D');
    ACEITE := FRMPRINCIPAL.texto_justifica('', 6, ' ', 'D');
    ESPECIE := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'D');
    QTDE := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');
    VALOR := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');
    VALOR_DOC := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00', qrvenda_contasreceber.fieldbyname('VALOR').asFLOAT), 10, ' ', 'E');
    DESCONTO := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');
    OUTRAS := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');
    MORA := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');
    OUTROS := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');
    VALOR_COBRADO := FRMPRINCIPAL.texto_justifica('', 10, ' ', 'E');


    INST1 := FRMPRINCIPAL.texto_justifica(Edit1.Text, 80, ' ', 'D');
    INST2 := FRMPRINCIPAL.texto_justifica(Edit2.Text, 80, ' ', 'D');
    INST3 := FRMPRINCIPAL.texto_justifica(Edit3.Text, 80, ' ', 'D');
    INST4 := FRMPRINCIPAL.texto_justifica('', 80, ' ', 'D');
    INST5 := FRMPRINCIPAL.texto_justifica(EOBS1.Text, 80, ' ', 'D');
    INST6 := FRMPRINCIPAL.texto_justifica(EOBS2.Text, 80, ' ', 'D');


    CEDENTE := FRMPRINCIPAL.texto_justifica(FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING + '  CPF/CNPJ: ' + FRMMODULO.QRCLIENTE.FIELDBYNAME('CPF').ASSTRING, 90, ' ', 'D');
    cedente_ender := FRMPRINCIPAL.texto_justifica(FRMMODULO.QRCLIENTE.FIELDBYNAME('ENDERECO').ASSTRING + ', ' + FRMMODULO.QRCLIENTE.FIELDBYNAME('BAIRRO').ASSTRING + ' - ' + FRMMODULO.QRCLIENTE.FIELDBYNAME('CIDADE').ASSTRING + '/' + FRMMODULO.QRCLIENTE.FIELDBYNAME('UF').ASSTRING + '  CEP ' + FRMMODULO.QRCLIENTE.FIELDBYNAME('CEP').ASSTRING, 90, ' ', 'D');



    for Y := 1 to 50 do
    begin
      linhas[Y] := '                                                                                                               ';
    end;
  // vencimento
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_VENCIMENTO').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO').ASinteger, 10);
    insert(vencimento, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO').ASinteger);
    linhas[y] := texto;
  // data do documento
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_DATADOC').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC').ASinteger, 10);
    insert(data_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC').ASinteger);
    linhas[y] := texto;
  // numero do documento
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_numero').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero').ASinteger, 20);
    insert(numero_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero').ASinteger);
    linhas[y] := texto;
  // especie do documento
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_espdoc').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc').ASinteger, 7);
    insert(especie_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc').ASinteger);
    linhas[y] := texto;
  // aceite
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_aceite').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite').ASinteger, 6);
    insert(aceite, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite').ASinteger);
    linhas[y] := texto;
  // especie
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_esp').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp').ASinteger, 10);
    insert(especie, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp').ASinteger);
    linhas[y] := texto;
  // quantidade
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_qtde').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde').ASinteger, 10);
    insert(qtde, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde').ASinteger);
    linhas[y] := texto;
  // valor
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valor').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor').ASinteger, 10);
    insert(valor, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor').ASinteger);
    linhas[y] := texto;
  // valor do documento
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valordoc').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc').ASinteger, 10);
    insert(valor_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc').ASinteger);
    linhas[y] := texto;
  // desconto
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_desconto').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto').ASinteger, 10);
    insert(desconto, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto').ASinteger);
    linhas[y] := texto;
  // outras
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outras').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras').ASinteger, 10);
    insert(outras, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras').ASinteger);
    linhas[y] := texto;
  // mora
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_mora').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora').ASinteger, 10);
    insert(mora, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora').ASinteger);
    linhas[y] := texto;
  // outros
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outros').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros').ASinteger, 10);
    insert(outros, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros').ASinteger);
    linhas[y] := texto;
  // valor
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cobrado').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado').ASinteger, 10);
    insert(valor_cobrado, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado').ASinteger);
    linhas[y] := texto;
  // sacado
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedente').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente').ASinteger, 90);
    insert(cedente, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente').ASinteger);
    linhas[y] := texto;
  // sacado endereco
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedenteender').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender').ASinteger, 90);
    insert(cedente_ender, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender').ASinteger);
    linhas[y] := texto;
  // instrucoes
    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst1').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger, 80);
    insert(inst1, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
    linhas[y] := texto;

    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst2').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger, 80);
    insert(inst2, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
    linhas[y] := texto;

    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst3').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger, 80);
    insert(inst3, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
    linhas[y] := texto;

    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst4').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger, 80);
    insert(inst4, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
    linhas[y] := texto;

    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst5').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger, 80);
    insert(inst5, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
    linhas[y] := texto;

    y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst6').ASinteger;
    texto := linhas[Y];
    delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger, 80);
    insert(inst6, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
    linhas[y] := texto;


    for y := 1 to 50 do
    begin
      writeln(f, #27 + #51 + #15 + #27#72, linhas[y]);
    end;

    if LINHA_ACERTO <> 0 then
    begin
      x := frmmodulo.qrconfig_cobrebem.fieldbyname('entre_linhas').asinteger + LINHA_ACERTO;
      LINHA_ACERTO := 0;
    end
    else
    begin
      x := frmmodulo.qrconfig_cobrebem.fieldbyname('entre_linhas').asinteger;
    end;
    while x <> 0 do begin writeln(f, #27 + #51 + #15 + #27#72, '                                                                                                               '); x := x - 1; end;

    qrvenda_contasreceber.NEXT;
  end;

  writeln(f, #12);
  closefile(f);

end;


procedure Tfrmboleto_avulso.combo_pagamentoExit(Sender: TObject);
begin
  rdesconto.SetFocus;

end;

end.
