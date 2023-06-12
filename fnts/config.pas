unit config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, ComCtrls, ExtCtrls, StdCtrls, Buttons,
  TFlatPanelUnit, Spin, Mask, DBCtrls, DB,
  ExtDlgs, wwdbedit, Wwdbspin, wwdblook, PageView, Wwdotdot, Wwdbcomb,
  Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset, Wwdatsrc,
  AdvGlowButton, RzPanel, RzRadGrp, RzDBRGrp, ACBrNFe, RzEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IniFiles,
  RzCmboBx, RzDBEdit, RzDBBnEd, RzBorder, dxGDIPlusClasses,
  cyBaseSpeedButton, cySpeedButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, ACBrBase, ACBrDFe, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, Vcl.Printers;

type
  TDadosFtp = record
    Host: string;
    Usuario: string;
    Senha: string;
    Caminho: string;
    Passivo: string;
     // Coloquei para atender a WA.
    Port: string;
    ProxyHost: string;
    ProxyPassword: string;
    ProxyPort: string;
    ProxyTipo: string;
    ProxyType: TIdFtpProxyType;
    ProxyUserName: string;
  end;

type
  Tfrmconfig = class(TForm)
    dsemitente: TDataSource;
    dsconfig: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    pop1: TPopupMenu;
    Gravar1: TMenuItem;
    Aplicar1: TMenuItem;
    Cancelar1: TMenuItem;
    QUERY: TZQuery;
    PageView3: TPageView;
    PageSheet7: TPageSheet;
    GroupBox10: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    PageSheet10: TPageSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label38: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    combo_os: TComboBox;
    combo_venda: TComboBox;
    DBEdit42: TDBEdit;
    combo_orcamento: TComboBox;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RxDBCalcEdit1: TJvDBCalcEdit;
    RxDBCalcEdit2: TJvDBCalcEdit;
    RxDBCalcEdit3: TJvDBCalcEdit;
    PageSheet11: TPageSheet;
    GroupBox9: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GroupBox11: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label57: TLabel;
    RxDBCalcEdit4: TJvDBCalcEdit;
    RxDBCalcEdit5: TJvDBCalcEdit;
    RxDBCalcEdit6: TJvDBCalcEdit;
    DBCheckBox6: TDBCheckBox;
    RxDBCalcEdit7: TJvDBCalcEdit;
    RxDBCalcEdit8: TJvDBCalcEdit;
    GroupBox14: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    GroupBox15: TGroupBox;
    combo_extrato: TComboBox;
    GroupBox24: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit46: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    PageSheet12: TPageSheet;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    BitBtn19: TBitBtn;
    GroupBox23: TGroupBox;
    Label42: TLabel;
    Label45: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label51: TLabel;
    DBEdit44: TDBEdit;
    combo_nf: TComboBox;
    DBEdit43: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit45: TDBEdit;
    Button1: TButton;
    DBEdit50: TDBEdit;
    PageSheet13: TPageSheet;
    pemitente2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label37: TLabel;
    DBEdit3: TDBEdit;
    enome: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageSheet14: TPageSheet;
    GroupBox5: TGroupBox;
    Label39: TLabel;
    DBComboBox6: TDBComboBox;
    DBEdit41: TDBEdit;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    GroupBox8: TGroupBox;
    Label30: TLabel;
    DBComboBox11: TDBComboBox;
    PageSheet16: TPageSheet;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    GroupBox16: TGroupBox;
    DBEdit28: TDBEdit;
    blocregiao: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit21: TDBEdit;
    BitBtn13: TBitBtn;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    PageSheet2: TPageSheet;
    GroupBox18: TGroupBox;
    DBEdit24: TDBEdit;
    BitBtn14: TBitBtn;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit27: TDBEdit;
    BitBtn15: TBitBtn;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    PageSheet3: TPageSheet;
    GroupBox20: TGroupBox;
    DBEdit32: TDBEdit;
    BitBtn16: TBitBtn;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit38: TDBEdit;
    BitBtn18: TBitBtn;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    PageSheet4: TPageSheet;
    GroupBox21: TGroupBox;
    DBEdit35: TDBEdit;
    BitBtn17: TBitBtn;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    GroupBox13: TGroupBox;
    AdvGlowButton2: TAdvGlowButton;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBImage1: TDBImage;
    AdvGlowButton3: TAdvGlowButton;
    qrreceber: TZQuery;
    qrvenda: TZQuery;
    Label49: TLabel;
    DBEdit48: TDBEdit;
    GroupBox25: TGroupBox;
    DBComboBox1: TDBComboBox;
    qrproduto: TZQuery;
    qrmov: TZQuery;
    GroupBox27: TGroupBox;
    DBCheckBox10: TDBCheckBox;
    combo_entrega: TComboBox;
    Label50: TLabel;
    Label54: TLabel;
    DBEdit49: TDBEdit;
    check_prestacao: TDBCheckBox;
    check_gerar: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    GroupBox29: TGroupBox;
    combo_recibo: TComboBox;
    Label55: TLabel;
    DBEdit53: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    retiqueta07: TRzDBRadioGroup;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBRadioGroup2: TRzDBRadioGroup;
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    GroupBox30: TGroupBox;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    DBCheckBox18: TDBCheckBox;
    RzGroupBox2: TRzGroupBox;
    DBCheckBox12: TDBCheckBox;
    euf: TwwDBComboBox;
    DBCheckBox26: TDBCheckBox;
    GroupBox32: TGroupBox;
    Label61: TLabel;
    DBEdit54: TDBEdit;
    AdvGlowButton5: TAdvGlowButton;
    Label23: TLabel;
    ecodmunicipio: TDBEdit;
    Label24: TLabel;
    DBEdit51: TDBEdit;
    Label25: TLabel;
    DBEdit52: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    GroupBox28: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    DBEdit58: TDBEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    DBEdit59: TDBEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    DBEdit60: TDBEdit;
    RzDBButtonEdit4: TRzDBButtonEdit;
    DBEdit61: TDBEdit;
    RzDBButtonEdit5: TRzDBButtonEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    RzDBButtonEdit6: TRzDBButtonEdit;
    PageSheet17: TPageSheet;
    GBTPNF: TGroupBox;
    rnffc: TRadioButton;
    rnfm: TRadioButton;
    rnfs: TRadioButton;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    Panel1: TPanel;
    bcancelar: TAdvGlowButton;
    baplicar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    Label82: TLabel;
    dbedtEMAIL_FINANCEIRO: TDBEdit;
    GroupBox31: TGroupBox;
    Label83: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    qrestoque: TZQuery;
    DBCheckBox16: TDBCheckBox;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label56: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel2: TPanel;
    bt_config0001: TAdvGlowButton;
    bt_config0002: TAdvGlowButton;
    bt_config0003: TAdvGlowButton;
    bt_config0004: TAdvGlowButton;
    bt_config0005: TAdvGlowButton;
    bt_config0006: TAdvGlowButton;
    bt_config0007: TAdvGlowButton;
    GroupBox12: TGroupBox;
    AdvGlowButton1: TAdvGlowButton;
    bt_configura0001: TAdvGlowButton;
    bt_configura0002: TAdvGlowButton;
    bt_configura0003: TAdvGlowButton;
    bt_configura0004: TAdvGlowButton;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox26: TGroupBox;
    Label58: TLabel;
    wwDBSpinEdit3: TwwDBSpinEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    bImpressora: TAdvGlowButton;
    lImpressora: TLabel;
    PrintDialog1: TPrintDialog;
    edtipo: TComboBox;
    Label59: TLabel;
    DBCheckBox19: TDBCheckBox;
    GroupBox33: TGroupBox;
    Label60: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    DBCheckBox20: TDBCheckBox;

    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure baplicarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure blocregiaoClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure Aplicar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure enovadata_inventarioKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eproxy_tipoExit(Sender: TObject);
    procedure eCliente_EntradaButtonClick(Sender: TObject);
    procedure eCliente_SaidaButtonClick(Sender: TObject);
    procedure eCliente_PerdaButtonClick(Sender: TObject);
    procedure eCfop_EntradaButtonClick(Sender: TObject);
    procedure eCfop_SaidaButtonClick(Sender: TObject);
    procedure eCfop_PerdaButtonClick(Sender: TObject);
    procedure eCliente_EntradaExit(Sender: TObject);
    procedure eCliente_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure eCfop_EntradaExit(Sender: TObject);
    procedure eCliente_SaidaExit(Sender: TObject);
    procedure eCfop_SaidaExit(Sender: TObject);
    procedure eCliente_PerdaExit(Sender: TObject);
    procedure eCfop_PerdaExit(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit4ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit5ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit6ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit1Exit(Sender: TObject);
    procedure RzDBButtonEdit2Exit(Sender: TObject);
    procedure RzDBButtonEdit3Exit(Sender: TObject);
    procedure RzDBButtonEdit4Exit(Sender: TObject);
    procedure RzDBButtonEdit5Exit(Sender: TObject);
    procedure RzDBButtonEdit6Exit(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton3Click(Sender: TObject);
    procedure cySpeedButton4Click(Sender: TObject);
    procedure cySpeedButton5Click(Sender: TObject);
    procedure cySpeedButton6Click(Sender: TObject);
    procedure cySpeedButton7Click(Sender: TObject);
    procedure cySpeedButton8Click(Sender: TObject);
    procedure cySpeedButton9Click(Sender: TObject);
    procedure cySpeedButton10Click(Sender: TObject);
    procedure bt_config0001Click(Sender: TObject);
    procedure bt_config0002Click(Sender: TObject);
    procedure bt_config0003Click(Sender: TObject);
    procedure bt_config0004Click(Sender: TObject);
    procedure bt_config0005Click(Sender: TObject);
    procedure bt_config0006Click(Sender: TObject);
    procedure bt_config0007Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bImpressoraClick(Sender: TObject);

  private

    procedure PegaDadosFtp;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig: Tfrmconfig;
  DadosFtp: TDadosFtp;

implementation

uses modulo, transf_dados, Math, logo, ecf, FmxUtils, config_cobranca,
  xloc_conta, principal, xloc_cliente, xloc_cfop, xloc_cidade;

{$R *.dfm}

procedure Tfrmconfig.bcancelarClick(Sender: TObject);
begin
  FRMMODULO.qrconfig.CANCEL;
  FRMMODULO.Conexao.Rollback;
  close;
end;

procedure Tfrmconfig.bgravarClick(Sender: TObject);
begin

  impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

//  if Rramo_padrao.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 1;
//  if Rramo_supermercado.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 2;
//  if Rramo_auto.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 3;
//  if Rramo_farmacia.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 4;
//  if rramo_metal.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 5;

  //if rnfe.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 1;
  //if rnfe2.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 2;
  //formulario continuo
  if rnffc.Checked then frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 1;
  //formulario manual
  if rnfm.Checked then frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 2;
  //nota simples
  if rnfs.Checked then frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 3;


  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger := combo_venda.ItemIndex;
  frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger := combo_os.ItemIndex;
  frmmodulo.qrconfig.FieldByName('extrato_tiponota').asinteger := combo_extrato.ItemIndex;
  frmmodulo.qrconfig.FieldByName('orcamento_tiponota').asinteger := combo_orcamento.ItemIndex;
  //frmmodulo.qrconfig.FieldByName('nf_tipo').asinteger := combo_nf.ItemIndex;
  frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger := combo_entrega.ItemIndex;
  frmmodulo.qrconfig.FieldByName('recibo_tiponota').asinteger := combo_recibo.ItemIndex;
  frmmodulo.qrconfig.FieldByName('atendimentoImpressora').AsString := lImpressora.Caption;
  frmmodulo.qrconfig.FieldByName('ATENDIMENTOIMPRESMODELO').asinteger := edtipo.ItemIndex;


  if frmmodulo.qrconfig.state = dsedit then
  begin

    FRMMODULO.qrconfig.POST;

  end;
  FRMMODULO.Conexaolocal.Commit;
  FRMMODULO.CONEXAO.Commit;
  close;
end;

procedure Tfrmconfig.bImpressoraClick(Sender: TObject);
begin
  if PrintDialog1.Execute then
    lImpressora.Caption := Printer.Printers[Printer.PrinterIndex];
end;

procedure Tfrmconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig.FormShow(Sender: TObject);
begin

  FRMMODULO.QRFORMAPGTO.OPEN;

  frmmodulo.qrconfig.open;
  combo_venda.ItemIndex := frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  combo_os.ItemIndex := frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger;
  combo_orcamento.ItemIndex := frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  combo_extrato.ItemIndex := frmmodulo.qrconfig.FieldByName('extrato_TIPONOTA').asinteger;
  combo_nf.ItemIndex := frmmodulo.qrconfig.FieldByName('nf_TIPO').asinteger;
  combo_entrega.ItemIndex := frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger;
  combo_recibo.ItemIndex := frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA').asinteger;
  lImpressora.Caption := frmmodulo.qrconfig.FieldByName('atendimentoImpressora').AsString;
  edtipo.ItemIndex := frmmodulo.qrconfig.FieldByName('ATENDIMENTOIMPRESMODELO').asinteger;

//  case frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger of
//    1: Rramo_padrao.Checked := true;
//    2: Rramo_supermercado.Checked := true;
//    3: Rramo_auto.Checked := true;
//    4: Rramo_farmacia.Checked := true;
//    5: rramo_metal.Checked := true;
 // end;

  case frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger of
    //1: rnfe.Checked := true;
    //2: rnfe2.Checked := true;
    1: rnffc.Checked := true;
    2: rnfm.Checked := true;
    3: rnfs.Checked := true;
  end;


  PageView3.ActivePageIndex := 0;


  //PegaDadosFtp();

  frmmodulo.qrconfig.edit;

  frmmodulo.qremitente.open;
end;

procedure Tfrmconfig.FormCreate(Sender: TObject);
begin
  FRMMODULO.qrconfig.OPEN;
  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
  begin
    combo_venda.Items.Clear;
    combo_venda.Items.Add('01 - Cupom Fiscal');
    combo_venda.Items.Add('02 - Nota Fiscal');
    combo_venda.Items.Add('03 - Bobina');
    combo_venda.Items.Add('04 - Cupom Fiscal / CNFV');
    combo_venda.Items.Add('05 - Bobina - Simples');
  end
  else
  begin
    combo_venda.Items.Clear;
    combo_venda.Items.Add('01 - Cupom Fiscal');
    combo_venda.Items.Add('02 - Nota Fiscal');
    combo_venda.Items.Add('03 - Bobina');
    combo_venda.Items.Add('04 - Formulário Contínuo - Razão');
    combo_venda.Items.Add('05 - Formulário Contínuo - Carta');
    combo_venda.Items.Add('06 - Pré-impresso (Personalizado)');
    combo_venda.Items.Add('07 - Contrato/Guia de Entrega/Carnê');
    combo_venda.Items.Add('08 - Personalizado');
    combo_venda.Items.Add('09 - Papel A4 - Laser / Tinta');
    combo_venda.Items.Add('10 - Papel Razão - Laser / Tinta');
    combo_venda.Items.Add('11 - Formulário Contínuo - Razão 2');
    combo_venda.Items.Add('12 - Contrato/Guia de Entrega/Carnê+Capa');
    combo_venda.Items.Add('13 - Bobina sem formatação');
    combo_venda.Items.Add('14 - Pedido + Carnê');
    combo_venda.Items.Add('15 - Contrato/Carnê');
    combo_venda.Items.Add('16 - Pedido + Carnê com código de barras');
    combo_venda.Items.add('17 - Razão Laser - 2');
  end;
end;

procedure Tfrmconfig.baplicarClick(Sender: TObject);
var
  ServerIni: TIniFile;

begin

 // if Rramo_padrao.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 1;
 // if Rramo_supermercado.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 2;
 // if Rramo_auto.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 3;
 // if Rramo_farmacia.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 4;
 // if rramo_metal.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 5;

  //if rnfe.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 1;
  //if rnfe2.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 2;
  if rnffc.Checked then frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 1;
  if rnfm.Checked then frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 2;
  if rnfs.Checked then frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 3;

  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger := combo_venda.ItemIndex;
  frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger := combo_os.ItemIndex;
  frmmodulo.qrconfig.FieldByName('extrato_tiponota').asinteger := combo_extrato.ItemIndex;
  frmmodulo.qrconfig.FieldByName('orcamento_tiponota').asinteger := combo_orcamento.ItemIndex;
  //frmmodulo.qrconfig.FieldByName('nf_tipo').asinteger := combo_nf.ItemIndex;
  frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger := combo_entrega.ItemIndex;

  frmmodulo.qrconfig.FieldByName('recibo_tiponota').asinteger := combo_recibo.ItemIndex;

  //////////////////////////////////////////////////////////////////////////////////////////
  // ATUALIZA AS AVRIAVEIS DO FRMMODULO

  ecf_modelo := frmmodulo.qrconfig.fieldbyname('ecf_modelo').asstring;
  ecf_porta := frmmodulo.qrconfig.fieldbyname('ecf_porta').asstring;

  // cupom vinculado

  ecf_cupom_vinculado := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_CUPOM_VINCULADO').AsInteger);
  ecf_cupom_vinculado_produtos := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_PRODUTOS_VINCULADOS').AsInteger);
  ecf_cupom_vinculado_carne := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_COMPROVANTE_DEBITO').AsInteger);

  // imprimir duplicatas
  imp_duplicata := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_DUPLICATA').AsInteger);


  ramo := frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger;

  impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

  if frmmodulo.QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 then
    ESTOQUE_NEGATIVO := TRUE else ESTOQUE_NEGATIVO := FALSE;


  case frmmodulo.qrconfig.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER of
    0: begin
        mascara_qtde := '###,###,##0';
        decimal_qtde := 0;
      end;
    2: begin
        mascara_qtde := '###,###,##0.00';
        decimal_qtde := 2;
      end;
    3: begin
        mascara_qtde := '###,###,##0.000';
        decimal_qtde := 3;
      end;
    4: begin
        mascara_qtde := '###,###,##0.0000';
        decimal_qtde := 4;
      end;
    5: begin
        mascara_qtde := '###,###,##0.00000';
        decimal_qtde := 5;
      end;
    6: begin
        mascara_qtde := '###,###,##0.000000';
        decimal_qtde := 6;
      end;
    7: begin
        mascara_qtde := '###,###,##0.0000000';
        decimal_qtde := 7;
      end;


  end;
  case frmmodulo.qrconfig.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER of
    2: begin
        mascara_valor := '###,###,##0.00';
        decimal_valor := 2;
      end;
    3: begin
        mascara_valor := '###,###,##0.000';
        decimal_valor := 3;
      end;
    4: begin
        mascara_valor := '###,###,##0.0000';
        decimal_valor := 4;
      end;
    5: begin
        mascara_valor := '###,###,##0.00000';
        decimal_valor := 5;
      end;
    6: begin
        mascara_valor := '###,###,##0.000000';
        decimal_valor := 6;
      end;
    7: begin
        mascara_valor := '###,###,##0.0000000';
        decimal_valor := 7;
      end;


  end;

  frmmodulo.qrprodutoESTOQUE.DisplayFormat := mascara_qtde;
  frmmodulo.qrprodutoESTOQUEMINIMO.DisplayFormat := mascara_qtde;
  frmmodulo.qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOCUSTO_ANTERIOR.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOVENDA_ANTERIOR.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoCUSTOMEDIO.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoCUSTO_COMPRA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoVALOR_ULTIMA_COMPRA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoPRECO_VENDA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoLUCRO.DisplayFormat := mascara_valor;

  //////////////////////////////////////////////////////////////////////////////////////////

  if frmmodulo.qrconfig.state = dsedit then
  begin
    FRMMODULO.qrconfig.POST;
  end;

  FRMMODULO.CONEXAO.COMMIT;
  FRMMODULO.Conexaolocal.Commit;
  frmmodulo.qrconfig.edit;

  // Grava configurações no arquivo de
  // configuração do FTP

 // ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'ini\FTPConfig.ini');
 // try
//    ServerIni.WriteString('CONEXAO', 'FTP', eftp.text);
//    ServerIni.WriteString('CONEXAO', 'USUARIO', eusuario.text);
//    ServerIni.WriteString('CONEXAO', 'SALVARS', esalvars.text);
//    ServerIni.WriteString('CONEXAO', 'SALVAR', esalvarc.text);
//    ServerIni.WriteString('CONEXAO', 'SALVARF', esalvarf.text);
//    ServerIni.WriteString('CONEXAO', 'Port', eporta.text);
//    ServerIni.WriteString('CONEXAO', 'PASSIVO', epassivo.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyHost', eproxy_Host.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyPassword', eproxy_Password.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyUserName', eproxy_UserName.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyPort', eproxy_Port.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyTipo', eproxy_Tipo.text);
 // finally
 //   ServerIni.Free;
 // end;
  Application.ProcessMessages;
end;

procedure Tfrmconfig.BitBtn4Click(Sender: TObject);
begin
  if BitBtn4.Caption = 'Alterar' then
  begin
    frmmodulo.qremitente.Edit;
    pemitente2.Enabled := true;
    bitbtn4.Caption := 'Gravar';
    bt_configura0001.Caption := 'Gravar';
    bitbtn5.Enabled := true;
    enome.SetFocus;
  end
  else
  begin
    frmmodulo.qremitente.Post;
    emitente_codigo := frmmodulo.qremitente.fieldbyname('codigo').asstring;
    emitente_nome := frmmodulo.qremitente.fieldbyname('nome').asstring;
    emitente_fantasia := frmmodulo.qremitente.fieldbyname('fantasia').asstring;
    emitente_endereco := frmmodulo.qremitente.fieldbyname('endereco').asstring + ' - ' + frmmodulo.qremitente.fieldbyname('bairro').asstring;
    emitente_cidade := frmmodulo.qremitente.fieldbyname('cidade').asstring + '/' + frmmodulo.qremitente.fieldbyname('uf').asstring;
    emitente_cep := frmmodulo.qremitente.fieldbyname('cep').asstring;
    emitente_telefone := frmmodulo.qremitente.fieldbyname('telefone').asstring;
    emitente_cnpj := frmmodulo.qremitente.fieldbyname('cnpj').asstring;
    emitente_ie := frmmodulo.qremitente.fieldbyname('ie').asstring;
    emitente_uf := frmmodulo.qremitente.fieldbyname('uf').asstring;

    pemitente2.Enabled := false;
    bitbtn4.Caption := 'Alterar';
    bt_configura0001.Caption := 'Alterar';
    bitbtn5.Enabled := false;
  end;
end;

procedure Tfrmconfig.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qremitente.Cancel;
  bitbtn4.Caption := 'Alterar';
  pemitente2.Enabled := false;
  bitbtn5.Enabled := false;
end;

procedure Tfrmconfig.BitBtn9Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmconfig.BitBtn10Click(Sender: TObject);
begin
  FRMMODULO.QRemitente.FIELDBYNAME('logo').Value := null;
end;

procedure Tfrmconfig.BitBtn12Click(Sender: TObject);
begin
{  if DBComboBox3.text = 'DARUMA' then
  begin
     executeFile('\SQL_Gerencial\server\ecf\daruma\Exemplo\Delphi\Daruma_Framework_Delphi7.exe', '', '',1)
  end; }
end;

procedure Tfrmconfig.blocregiaoClick(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_VENDA_AV').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn13Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_DUPLICATA_NFE').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn14Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OS_AV').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn15Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OS_AP').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn18Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_RECEBTO_CREDIARIO').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn16Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OUTRAS_ENTRADAS').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn17Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OUTRAS_SAIDAS').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.Button1Click(Sender: TObject);
begin
  frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger := 16;
  frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger := 19;
  frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger := 41;
end;

procedure Tfrmconfig.DBEdit51Exit(Sender: TObject);
begin
//  frmmodulo.qrconfig.fieldbyname('ecf_caixa').asstring := frmPrincipal.zerarcodigo(DBEdit51.text,3);
end;

procedure Tfrmconfig.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmconfig);
end;

procedure Tfrmconfig.Aplicar1Click(Sender: TObject);
begin
  baplicarClick(frmconfig);
end;

procedure Tfrmconfig.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmconfig);
end;

procedure Tfrmconfig.cySpeedButton10Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 9;
end;

procedure Tfrmconfig.cySpeedButton1Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 0;
end;

procedure Tfrmconfig.cySpeedButton2Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 1;
end;

procedure Tfrmconfig.cySpeedButton3Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 2;
end;

procedure Tfrmconfig.cySpeedButton4Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 3;
end;

procedure Tfrmconfig.cySpeedButton5Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 4;
end;

procedure Tfrmconfig.cySpeedButton6Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 5;
end;

procedure Tfrmconfig.cySpeedButton7Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 6;
end;

procedure Tfrmconfig.cySpeedButton8Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 7;
end;

procedure Tfrmconfig.cySpeedButton9Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 8;
end;

procedure Tfrmconfig.enovadata_inventarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmconfig.AdvGlowButton2Click(Sender: TObject);
begin
  if application.messagebox('Esta operação limpa o Banco de Dados e Transfere dados de outros sistemas! Deseja continuar?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
  begin
    frmtransf_dados := tfrmtransf_dados.create(self);
    frmtransf_dados.showmodal;
  end;
end;

procedure Tfrmconfig.AdvGlowButton1Click(Sender: TObject);
begin
  frmconfig_cobranca := tfrmconfig_cobranca.create(self);
  frmconfig_cobranca.showmodal;
end;

procedure Tfrmconfig.AdvGlowButton3Click(Sender: TObject);
var y: integer;
begin
  qrvenda.close;
  qrvenda.sql.clear;
  qrvenda.sql.add('select * from c000048');
  qrvenda.open;
  qrvenda.first;
  while not qrvenda.eof do
  begin
    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('select * from c000049 where codvenda = ''' + qrvenda.fieldbyname('codigo').asstring + ''' and situacao = 1');
    qrreceber.open;
    if qrreceber.RecordCount > 1 then
    begin
      qrreceber.first;
      y := 1;
      while not qrreceber.eof do
      begin
        qrreceber.edit;
        qrreceber.fieldbyname('codigo').asstring := qrvenda.fieldbyname('codigo').asstring + '/' + frmprincipal.zerarcodigo(inttostr(y), 2);
        qrreceber.post;
        qrreceber.next;
        y := y + 1;
      end;
    end;
    qrvenda.next;
  end;
  showmessage('Pronto!');
end;

procedure Tfrmconfig.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmconfig.Button2Click(Sender: TObject);
begin
{$IFNDEF ACBrNFeOpenSSL}
//  dsconfig.dataset.fieldbyname('nfe_certificado').asstring := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
{$ENDIF}
end;

procedure Tfrmconfig.BitBtn1Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_VENDA_AP').ASSTRING := RESULTADO_PESQUISA1;
  end;

end;

procedure Tfrmconfig.PegaDadosFtp;
var
  ServerIni: TIniFile;

begin

//  ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'ini\FTPConfig.ini');

//  try
//    eftp.text := ServerIni.ReadString('CONEXAO', 'FTP', '');
//    eusuario.text := ServerIni.ReadString('CONEXAO', 'USUARIO', '');
//    esalvars.text := ServerIni.ReadString('CONEXAO', 'SALVARS', '');
//    esalvarc.text := ServerIni.ReadString('CONEXAO', 'SALVAR', '');
//    esalvarf.text := ServerIni.ReadString('CONEXAO', 'SALVARF', '');
//    eporta.text := ServerIni.ReadString('CONEXAO', 'Port', '');
//    epassivo.text := ServerIni.ReadString('CONEXAO', 'PASSIVO', '');

//    eproxy_Host.text := ServerIni.ReadString('CONEXAO', 'ProxyHost', '');
//    eproxy_Password.text := ServerIni.ReadString('CONEXAO', 'ProxyPassword', '');
//    eproxy_UserName.text := ServerIni.ReadString('CONEXAO', 'ProxyUserName', '');
//    eproxy_Port.text := ServerIni.ReadString('CONEXAO', 'ProxyPort', '');
//    eproxy_Tipo.text := ServerIni.ReadString('CONEXAO', 'ProxyTipo', '');

//    if eporta.text = '' then eporta.text := '21';
//    if eproxy_Port.text = '' then eproxy_Port.text := '0';
//    if eproxy_Tipo.text = '' then eproxy_tipo.text := 'fpcmNone'
//  finally
//    ServerIni.Free;
 // end;

end;

procedure Tfrmconfig.eproxy_tipoExit(Sender: TObject);
begin
  baplicarClick(frmconfig);
  bgravar.SetFocus;
end;

procedure Tfrmconfig.eCliente_EntradaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_ENTRADA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_ENTRADA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_SaidaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_SAIDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_SAIDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_PerdaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_PERDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_PERDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_EntradaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_ENTRADA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_ENTRADA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_SaidaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SAIDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SAIDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_PerdaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_PERDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_PERDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_EntradaExit(Sender: TObject);
begin
//  if eCliente_Entrada.Text = '' then
//  begin
//    eCliente_EntradaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.eCliente_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmconfig.eCfop_EntradaExit(Sender: TObject);
begin
//  if eCfop_Entrada.Text = '' then
//  begin
//    eCfop_EntradaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.eCliente_SaidaExit(Sender: TObject);
begin
//  if eCliente_Saida.Text = '' then
//  begin
//    eCliente_SaidaButtonClick(Frmconfig);
 // end;
end;

procedure Tfrmconfig.eCfop_SaidaExit(Sender: TObject);
begin
//  if eCfop_Saida.Text = '' then
//  begin
//    eCfop_SaidaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.eCliente_PerdaExit(Sender: TObject);
begin
 // if eCliente_Perda.Text = '' then
 // begin
 //   eCliente_PerdaButtonClick(Frmconfig);
 // end;
end;

procedure Tfrmconfig.eCfop_PerdaExit(Sender: TObject);
begin
//  if eCfop_Perda.Text = '' then
//  begin
//    eCfop_PerdaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.AdvGlowButton5Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qremitente.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.qremitente.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.qremitente.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qremitente.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit8.SetFocus;
end;

procedure Tfrmconfig.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmconfig.bincluirClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmconfig.bexcluirClick(Sender: TObject);
begin
  FRMMODULO.Qrconfig.FIELDBYNAME('logo_comercio').Value := null;
end;

procedure Tfrmconfig.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.Qrconfig.state = dsinsert) or (frmmodulo.Qrconfig.State = dsedit) then
  begin
    if DBEdit8.Text = '' then
      AdvGlowButton5.OnClick(frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_VENDA_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_VENDA_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit2ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_VENDA_FORA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_VENDA_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit3ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEVOLUCAO_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_DEVOLUCAO_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit4ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEVOLUCAO_FORA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_DEVOLUCAO_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit5ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SERVICO_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_SERVICO_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit6ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SERVICO_FORA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_SERVICO_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit1Exit(Sender: TObject);
begin
  if RzDBButtonEdit1.Text = '' then
  begin
    RzDBButtonEdit1ButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit2Exit(Sender: TObject);
begin
  if RzDBButtonEdit2.Text = '' then
  begin
    RzDBButtonEdit2ButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit3Exit(Sender: TObject);
begin
  if RzDBButtonEdit3.Text = '' then
  begin
    RzDBButtonEdit3ButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit4Exit(Sender: TObject);
begin
  if RzDBButtonEdit4.Text = '' then
  begin
    RzDBButtonEdit4ButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit5Exit(Sender: TObject);
begin
  if RzDBButtonEdit5.Text = '' then
  begin
    RzDBButtonEdit5ButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit6Exit(Sender: TObject);
begin
  if RzDBButtonEdit6.Text = '' then
  begin
    RzDBButtonEdit6ButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.PageView2Change(Sender: TObject);
begin
  if PageView2.ActivePageIndex = 2 then

end;

procedure Tfrmconfig.bt_config0001Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 0;
end;

procedure Tfrmconfig.bt_config0002Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 1;
end;

procedure Tfrmconfig.bt_config0003Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 2;
end;

procedure Tfrmconfig.bt_config0004Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 3;
end;

procedure Tfrmconfig.bt_config0005Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 4;
end;

procedure Tfrmconfig.bt_config0006Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 5;
end;

procedure Tfrmconfig.bt_config0007Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 6;
end;

end.


