unit tabela_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.ExtCtrls, TFlatPanelUnit, Vcl.Menus, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, acPNG;

type
  Tfrm_tb_preco = class(TForm)
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    ZQuery1PRECOVENDA1: TFloatField;
    ZQuery1PRECOVENDA2: TFloatField;
    ZQuery1PRECOVENDA3: TFloatField;
    ZQuery1PRECOVENDA4: TFloatField;
    ZQuery1PRECOVENDA5: TFloatField;
    ZQuery1PRECOATACADO1: TFloatField;
    ZQuery1PRECOATACADO2: TFloatField;
    ZQuery1PRECOATACADO3: TFloatField;
    ZQuery1PRECOATACADO4: TFloatField;
    ZQuery1PRECOATACADO5: TFloatField;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N12: TMenuItem;
    Label96: TLabel;
    Label103: TLabel;
    FlatPanel9: TFlatPanel;
    Image5: TImage;
    FlatPanel17: TFlatPanel;
    Image7: TImage;
    FlatPanel20: TFlatPanel;
    Image8: TImage;
    FlatPanel22: TFlatPanel;
    Image9: TImage;
    FlatPanel24: TFlatPanel;
    Image10: TImage;
    FlatPanel30: TFlatPanel;
    Image15: TImage;
    FlatPanel29: TFlatPanel;
    Image14: TImage;
    FlatPanel28: TFlatPanel;
    Image13: TImage;
    FlatPanel27: TFlatPanel;
    Image12: TImage;
    FlatPanel26: TFlatPanel;
    Image11: TImage;
    FlatPanel10: TFlatPanel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    FlatPanel19: TFlatPanel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    FlatPanel21: TFlatPanel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    FlatPanel23: TFlatPanel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    FlatPanel25: TFlatPanel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    FlatPanel31: TFlatPanel;
    RzDBNumericEdit12: TRzDBNumericEdit;
    FlatPanel32: TFlatPanel;
    RzDBNumericEdit11: TRzDBNumericEdit;
    FlatPanel33: TFlatPanel;
    RzDBNumericEdit10: TRzDBNumericEdit;
    FlatPanel34: TFlatPanel;
    RzDBNumericEdit9: TRzDBNumericEdit;
    FlatPanel35: TFlatPanel;
    RzDBNumericEdit8: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure FormShow(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tb_preco: Tfrm_tb_preco;

implementation

{$R *.dfm}

uses modulo;

procedure Tfrm_tb_preco.FormShow(Sender: TObject);
begin
  ZQuery1.close;
  ZQuery1.sql.clear;
  ZQuery1.sql.add('select * from c000025 where codigo = ''' +
    frmmodulo.cod_produto + '''');
  ZQuery1.OPEN;
end;

procedure Tfrm_tb_preco.N11Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at1' ;
  Close
end;

procedure Tfrm_tb_preco.N12Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr5';
  Close
end;

procedure Tfrm_tb_preco.N21Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at2';
  Close
end;

procedure Tfrm_tb_preco.N31Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at3';
  Close
end;

procedure Tfrm_tb_preco.N41Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at4';
  Close
end;

procedure Tfrm_tb_preco.N51Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at5';
  Close
end;

procedure Tfrm_tb_preco.N61Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr1';
  Close
end;

procedure Tfrm_tb_preco.N71Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr2';
  Close
end;

procedure Tfrm_tb_preco.N81Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr3';
  Close
end;

procedure Tfrm_tb_preco.N91Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr4';
  Close
end;

end.
