unit xloc_pessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, JvExMask, JvToolEdit,
  AdvGlowButton, AdvMetroButton;

type
  Tfrmxloc_Pessoas = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Bevel2: TBevel;
    SAIR: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    DateEdit1: TJvDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvMetroButton2: TAdvMetroButton;
    GRID2: TwwDBGrid;
    ds1: TDataSource;
    ZQuery1: TZQuery;
    GRID3: TwwDBGrid;
    ds2: TDataSource;
    ZQuery2: TZQuery;
    Label7: TLabel;
    Label9: TLabel;
    ds3: TDataSource;
    ZQuery3: TZQuery;
    GRID4: TwwDBGrid;
    Label10: TLabel;
    ds4: TDataSource;
    ZQuery4: TZQuery;
    GRID5: TwwDBGrid;
    FlatPanel2: TFlatPanel;
    Label12: TLabel;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Bevel5: TBevel;
    Label17: TLabel;
    Label19: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    AdvMetroButton1: TAdvMetroButton;
    Label11: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    batualiza: TAdvGlowButton;
    ed_data: TJvDateEdit;
    ed_data1: TJvDateEdit;
    balterar: TAdvGlowButton;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure batualizaClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
//    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_Pessoas: Tfrmxloc_Pessoas;
  voltar: boolean;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmxloc_Pessoas.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_Pessoas.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_Pessoas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_Pessoas.AdvGlowButton1Click(Sender: TObject);
var ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex of
    0: TIPO := 'data';
  end;

  try
  query.close;
  query.sql.clear;
  query.sql.add('select c000048.CODIGO as CODVENDA, c000044.CODIGO,');
  query.sql.add('c000048.DATA');
  query.sql.add('from c000048, c000044');
  query.sql.add('where c000048.DATA = c000044.DATA');
  query.sql.add('and upper(' + tipo + ') like ''' + ref + loc.Text + '%''' + parametro_pesquisa + ' order by c000048.CODIGO');
//  query.sql.add('order by c000048.CODIGO');
  query.open;
 // query.first;
  //query.sql.Add('select v.NUMERO_CUPOM_FISCAL, v.data as DATA_DA_VENDA from c000048 v where upper(' + tipo + ') like ''' + ref + loc.Text + '%''' + parametro_pesquisa + ' order by codigo');
//  query.sql.Add('select * from c000044 where upper(' + tipo + ') like ''' + ref + loc.Text + '%''' + parametro_pesquisa + ' order by codigo');
 // query.sql.Add('select * from c000124 where upper(' + tipo + ') like ''' + ref + loc.Text + '%''' + parametro_pesquisa + ' order by codigo');
 // query.SQL.Add('select * from c000048 where data like ''' + dateedit1.text + ''' ORDER BY codigo');
//  query.open;
  grid.SetFocus;
  except
    end;
end;

procedure Tfrmxloc_Pessoas.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_Pessoas.balterarClick(Sender: TObject);
begin

  query.Close;
  query.sql.clear;
  query.sql.add('update c000048 set data= :data1');
  query.sql.add('where');
  query.sql.add('data = :data');
  query.parambyname('data1').asdatetime := ed_data1.Date;
  query.parambyname('data').asdatetime := ed_data.Date;
 // query.open;
  query.ExecSQL;

  Zquery1.Close;
  Zquery1.sql.clear;
  Zquery1.sql.add('update c000044 set data= :data1');
  Zquery1.sql.add('where');
  Zquery1.sql.add('data = :data');
  Zquery1.parambyname('data1').asdatetime := ed_data1.Date;
  Zquery1.parambyname('data').asdatetime := ed_data.Date;
 // Zquery1.open;
  Zquery1.ExecSQL;

  Zquery2.Close;
  Zquery2.sql.clear;
  Zquery2.sql.add('update c000124 set DATA_VENDA= :data1');
  Zquery2.sql.add('where');
  Zquery2.sql.add('DATA_VENDA = :data');
  Zquery2.parambyname('data1').asdatetime := ed_data1.Date;
  Zquery2.parambyname('data').asdatetime := ed_data.Date;
 // Zquery2.open;
  Zquery2.ExecSQL;

  Zquery3.Close;
  Zquery3.sql.clear;
  Zquery3.sql.add('update cupom set data= :data1');
  Zquery3.sql.add('where');
  Zquery3.sql.add('data = :data');
  Zquery3.parambyname('data1').asdatetime := ed_data1.Date;
  Zquery3.parambyname('data').asdatetime := ed_data.Date;
 // Zquery3.open;
  Zquery3.ExecSQL;

  Zquery4.Close;
  Zquery4.sql.clear;
  Zquery4.sql.add('update c000032 set data= :data1');
  Zquery4.sql.add('where');
  Zquery4.sql.add('data = :data');
  Zquery4.parambyname('data1').asdatetime := ed_data1.Date;
  Zquery4.parambyname('data').asdatetime := ed_data.Date;
  //Zquery4.open;
  Zquery4.ExecSQL;

  Application.MessageBox('Altera��o das datas realizada com sucesso!','Aten��o',MB_ICONINFORMATION);

end;

procedure Tfrmxloc_Pessoas.batualizaClick(Sender: TObject);

begin

 voltar := false;
  query.Close;
  query.SQL.clear;
  query.sql.add('select c000048.NUMERO_CUPOM_FISCAL as CODVENDA_1,');
  query.sql.add('c000048.DATA AS DATA_DA_VENDA_1');
  query.sql.add('from c000048');
  query.sql.add('ORDER BY c000048.DATA');
  query.open;

  voltar := false;
  Zquery1.Close;
  Zquery1.SQL.clear;
  Zquery1.sql.add('select c000044.HISTORICO as CODVENDA_4,');
  Zquery1.sql.add('c000044.DATA AS DATA_DA_VENDA_4');
  Zquery1.sql.add('from c000044');
  Zquery1.sql.add('ORDER BY c000044.DATA');
  Zquery1.open;

  voltar := false;
  Zquery2.Close;
  Zquery2.SQL.clear;
  Zquery2.sql.add('select c000124.COD_VENDA as CODVENDA_3,');
  Zquery2.sql.add('c000124.DATA_VENDA AS DATA_DA_VENDA_3');
  Zquery2.sql.add('from c000124');
  Zquery2.sql.add('ORDER BY c000124.DATA_VENDA');
  Zquery2.open;

  voltar := false;
  Zquery3.Close;
  Zquery3.SQL.clear;
  Zquery3.sql.add('select cupom.ccf as CODVENDA_2,');
  Zquery3.sql.add('cupom.DATA AS DATA_DA_VENDA_2');
  Zquery3.sql.add('from cupom');
  Zquery3.sql.add('ORDER BY cupom.DATA');
  Zquery3.open;

  voltar := false;
  Zquery4.Close;
  Zquery4.SQL.clear;
  Zquery4.sql.add('select c000032.numeronota as CODVENDA_5,');
  Zquery4.sql.add('c000032.DATA AS DATA_DA_VENDA_5');
  Zquery4.sql.add('from c000032');
  Zquery4.sql.add('ORDER BY c000032.DATA');
  Zquery4.open;

end;

procedure Tfrmxloc_Pessoas.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_Pessoas.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_Pessoas.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('data').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_Pessoas.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('data').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_Pessoas.locEnter(Sender: TObject);

begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_Pessoas.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_Pessoas.FormShow(Sender: TObject);
begin
 voltar := false;
  query.Close;
  query.SQL.clear;
  query.sql.add('select c000048.NUMERO_CUPOM_FISCAL as CODVENDA_1,');
  query.sql.add('c000048.DATA AS DATA_DA_VENDA_1');
  query.sql.add('from c000048');
  query.sql.add('ORDER BY c000048.DATA');
  query.open;

  voltar := false;
  Zquery1.Close;
  Zquery1.SQL.clear;
  Zquery1.sql.add('select c000044.HISTORICO as CODVENDA_4,');
  Zquery1.sql.add('c000044.DATA AS DATA_DA_VENDA_4');
  Zquery1.sql.add('from c000044');
  Zquery1.sql.add('ORDER BY c000044.DATA');
  Zquery1.open;

  voltar := false;
  Zquery2.Close;
  Zquery2.SQL.clear;
  Zquery2.sql.add('select c000124.COD_VENDA as CODVENDA_3,');
  Zquery2.sql.add('c000124.DATA_VENDA AS DATA_DA_VENDA_3');
  Zquery2.sql.add('from c000124');
  Zquery2.sql.add('ORDER BY c000124.DATA_VENDA');
  Zquery2.open;

  voltar := false;
  Zquery3.Close;
  Zquery3.SQL.clear;
  Zquery3.sql.add('select cupom.ccf as CODVENDA_2,');
  Zquery3.sql.add('cupom.DATA AS DATA_DA_VENDA_2');
  Zquery3.sql.add('from cupom');
  Zquery3.sql.add('ORDER BY cupom.DATA');
  Zquery3.open;

  voltar := false;
  Zquery4.Close;
  Zquery4.SQL.clear;
  Zquery4.sql.add('select c000032.numeronota as CODVENDA_5,');
  Zquery4.sql.add('c000032.DATA AS DATA_DA_VENDA_5');
  Zquery4.sql.add('from c000032');
  Zquery4.sql.add('ORDER BY c000032.DATA');
  Zquery4.open;

end;

procedure Tfrmxloc_Pessoas.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  sair.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_Pessoas.GRIDExit(Sender: TObject);
begin
  sair.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_Pessoas.locChange(Sender: TObject);
var ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex of
    0: TIPO := 'data';
  end;

  try
    query.close;
    query.sql.clear;
    if dateedit1.Text = '' then
      query.sql.Add('select * from c000048 where codigo is not null ' + parametro_pesquisa + ' ORDER BY codigo')
    else
      query.sql.Add('select * from c000048 where upper(' + tipo + ') like ''' + ref + dateedit1.Text + '%''' + parametro_pesquisa + ' order by codigo');
    query.open;
  except
  end;
end;

procedure Tfrmxloc_Pessoas.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('data').asstring;
  close;

end;

procedure Tfrmxloc_Pessoas.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
