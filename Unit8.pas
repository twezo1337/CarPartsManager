unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Menus, Vcl.Samples.Spin, Data.DB;

type
  TForm8 = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBImage1: TDBImage;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    DBText9: TDBText;
    Panel1: TPanel;
    DBText10: TDBText;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Filter: TEdit;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    CheckBox1: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure FilterChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit12, Unit11;

procedure TForm8.Button1Click(Sender: TObject);
begin
  DataModule2.T_user_basket.Insert;
  if DataModule2.T_user_basket.State in [dsEdit, dsInsert] then
    begin // Если находимся в режиме редактирования или добавления то
        DataModule2.T_user_basket.fieldbyname('IDuser').value:= idUser; //потом изменить
        DataModule2.T_user_basket.fieldbyname('IDgc').value:= DBCtrlGrid1.DataSource.DataSet.fieldbyname('IDgc').Value; //потом изменить
        DataModule2.T_user_basket.post; // Сохраняем запись НД
        ShowMessage('Товар добавлен в корзину');
    end;
  end;

procedure TForm8.CheckBox1Click(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_v_goods_catalog.Active := False;
 baseSQL := 'SELECT * FROM view_goods_catalog';
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
 filter_s := '';
 if CheckBox1.Checked then
 begin
 // Формирования условия выборки
 filter_s := ' WHERE gcCost ' + ComboBox1.Text + ' ' +
 IntToStr(SpinEdit1.Value);
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s;
 end;
 DataModule2.Q_v_goods_catalog.Active := True;
end;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure TForm8.FilterChange(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_v_goods_catalog.DisableControls;
 DataModule2.Q_v_goods_catalog.Active := false;
 baseSQL := 'SELECT * FROM view_goods_catalog ';
 filter_s := '';
 if length(Filter.Text) > 0 then
 filter_s := 'WHERE tgName LIKE ' + QuotedStr('%' + Filter.Text +
 '%') + ' OR gcName LIKE ' + QuotedStr('%' + Filter.Text + '%') +
 ' OR markName LIKE ' + QuotedStr('%' + Filter.Text + '%') +
 ' OR modelName LIKE ' + QuotedStr('%' + Filter.Text + '%') +
 ' OR Articul LIKE ' + QuotedStr('%' + Filter.Text + '%');
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s;
 DataModule2.Q_v_goods_catalog.Active := true;
 DataModule2.Q_v_goods_catalog.EnableControls;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  Label13.Caption := UPhone;
end;

procedure TForm8.N1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm8.N2Click(Sender: TObject);
begin
  Form12.Show;
end;

procedure TForm8.SpinEdit1Change(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

end.
