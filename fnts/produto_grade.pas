unit produto_grade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmproduto_grade = class(TForm)
    dsgrade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    qrgrade_entrada: TZQuery;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    RTOTAL: TJvCalcEdit;
    RDIGITADO: TJvCalcEdit;
    Label3: TLabel;
    RDIFERENCA: TJvCalcEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    qrgrade_entradaCODIGO: TWideStringField;
    qrgrade_entradaCODPRODUTO: TWideStringField;
    qrgrade_entradaCODNOTA: TWideStringField;
    qrgrade_entradaQTDE: TFloatField;
    qrgrade_entradaCODGRADE: TWideStringField;
    qrgrade_entradaCODITEM: TWideStringField;
    qrgrade_entradaNUMERACAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrgrade_entradaBeforeEdit(DataSet: TDataSet);
    procedure qrgrade_entradaBeforeInsert(DataSet: TDataSet);
    procedure qrgrade_entradaAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrgrade_entradaAfterInsert(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_grade: Tfrmproduto_grade;
  qtde_anterior: real;
  nao_incluir: boolean;

implementation

uses modulo, produto_entrada, principal;

{$R *.dfm}

procedure Tfrmproduto_grade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_grade.FormShow(Sender: TObject);
begin

  nao_incluir := false;


  qrgrade_entrada.close;
  qrgrade_entrada.SQL.clear;
  qrgrade_entrada.SQL.add('select * from c000033 where codITEM = ''' + frmPRODUTO_ENTRADA.qrENTRADA_ITEM.fieldbyname('codigo').asstring + ''' order by codigo');
  qrgrade_entrada.open;


  if QRGRADE_ENTRADA.RecordCount = 0 then
  begin
    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo');
    frmmodulo.qrgrade_produto.Open;
    frmmodulo.qrgrade_produto.First;
    while not frmmodulo.qrgrade_produto.eof do
    begin
      qrgrade_entrada.Insert;
      qrgrade_entrada.fieldbyname('codigo').asstring := frmprincipal.codifica('000033');
      qrgrade_entrada.fieldbyname('codproduto').asstring := frmproduto_entrada.qrentrada_item.fieldbyname('codproduto').asstring;
      qrgrade_entrada.fieldbyname('codnota').asstring := frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('coditem').asstring := frmproduto_entrada.qrentrada_item.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('codgrade').asstring := frmmodulo.qrgrade_produto.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('qtde').asfloat := 0;
      qrgrade_entrada.post;
      frmmodulo.qrgrade_produto.Next;
    end;
    RTOTAL.Value := frmproduto_entrada.qrentrada_item.fieldbyname('qtde').asfloat;
    rdigitado.Value := 0;
    Rdiferenca.Value := frmproduto_entrada.qrentrada_item.fieldbyname('qtde').asfloat;
  end
  else
  begin

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    qrgrade_entrada.first;
    RTOTAL.Value := frmproduto_entrada.qrentrada_item.fieldbyname('qtde').asfloat;
    while not qrgrade_entrada.eof do
    begin
      rdigitado.Value := qrgrade_entrada.fieldbyname('qtde').asfloat + rdigitado.value;
      qrgrade_entrada.Next;
    end;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;

  qrgrade_entrada.Refresh;
  wwDBGrid1.setfocus;
end;

procedure Tfrmproduto_grade.bgravarClick(Sender: TObject);
begin
  if qrgrade_entrada.State = dsedit then
    qrgrade_entrada.Post;
  application.ProcessMessages;

  if (rdiferenca.value <> 0) then
  begin
    if rdigitado.Value <> 0 then
    begin
      application.MessageBox('Os valores digitados nesta grade n�o confere com a quantidade deste produto! Caso n�o queira utilizar esta grade, favor zerar todos os valores no campo "QTDE".', 'Aten��o', mb_ok + MB_ICONWARNING);
      wwdbgrid1.setfocus;
    end
    else
    begin
      qrgrade_entrada.Refresh;
      close;
    end;
  end
  else
  begin
    qrgrade_entrada.Refresh;
    close;
  end;
end;

procedure Tfrmproduto_grade.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_grade.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;
  except
  end;
end;

procedure Tfrmproduto_grade.qrgrade_entradaBeforeEdit(DataSet: TDataSet);
begin
  qtde_anterior := qrgrade_entrada.fieldbyname('qtde').asfloat;
end;

procedure Tfrmproduto_grade.qrgrade_entradaBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_grade.qrgrade_entradaAfterPost(DataSet: TDataSet);
begin
  if frmmodulo.qrgrade_produto.Locate('codigo', qrgrade_entrada.fieldbyname('codgrade').asstring, [loCaseInsensitive]) then
  begin
    frmmodulo.qrgrade_produto.Edit;
    frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat +
      qrgrade_entrada.fieldbyname('qtde').asfloat -
      qtde_anterior;
    frmmodulo.qrgrade_produto.Post;
  end;

  rdigitado.Value := rdigitado.value + qrgrade_entrada.fieldbyname('qtde').asfloat - qtde_anterior;
  rdiferenca.Value := rdigitado.value - rtotal.value;
end;

procedure Tfrmproduto_grade.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_grade.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_grade.qrgrade_entradaAfterInsert(DataSet: TDataSet);
begin
  if nao_incluir then qrgrade_entrada.Cancel;
end;

procedure Tfrmproduto_grade.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_grade);
end;

end.
