unit baixar_cartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, contasreceber, frxClass, frxExportPDF,
  ACBrBoleto, ACBrBoletoFCFR, ACBrBase, Data.DB, Datasnap.DBClient,
  JvMemoryDataset, frxDBSet, frxDesgn, Vcl.Menus, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, AdvToolBar, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Collection, AdvGlowButton, JvExMask, JvToolEdit, JvBaseEdits,
  Vcl.Buttons, vcl.wwdbigrd, Vcl.Grids, vcl.wwdbgrid, PageView, Vcl.Mask,
  RzEdit, RzBtnEdt;

type
  Tfrmcontasreceber1 = class(Tfrmcontasreceber)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber1: Tfrmcontasreceber1;

implementation

{$R *.dfm}

end.
