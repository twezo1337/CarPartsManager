unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, dateutils,
  Vcl.Samples.Spin;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    MainMenu1: TMainMenu;
    d1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    PopupMenu1: TPopupMenu;
    PM_add_sale: TMenuItem;
    PM_add_supply: TMenuItem;
    PM_Edit_Operation: TMenuItem;
    Panel2: TPanel;
    Label2: TLabel;
    E_Filter: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    ChkCountFilter: TCheckBox;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure d1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure PM_add_saleClick(Sender: TObject);
    procedure PM_add_supplyClick(Sender: TObject);
    procedure PM_Edit_OperationClick(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure ChkCountFilterClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  IsAppStatrtedFlag:boolean = false;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit5, Unit6, Unit7;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  // ���������� �������
 DataModule2.Q_v_goods_operations.Filtered := false;
 // ������������ ������ ����������
 DataModule2.Q_v_goods_operations.Filter := 'oDateTime >= ' +
 QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)) +
 ' and oDateTime <= ' + QuotedStr(FormatDateTime('YYYY-MM-DD',
 DateTimePicker2.Date));
 // ������� ��������� ���������� ������� ��� � ��������� CheckBox1
 DataModule2.Q_v_goods_operations.Filtered := CheckBox1.Checked;
end;

procedure TForm3.ChkCountFilterClick(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_v_storage.Active := False;
 baseSQL := 'SELECT * FROM view_storage';
 DataModule2.Q_v_storage.SQL.Text := baseSQL;
 filter_s := '';
 if ChkCountFilter.Checked then
 begin
 // ������������ ������� �������
 filter_s := ' WHERE sCount ' + ComboBox1.Text + ' ' +
 IntToStr(SpinEdit1.Value);
 DataModule2.Q_v_storage.SQL.Text := baseSQL + filter_s;
 end;
 DataModule2.Q_v_storage.Active := True;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  ChkCountFilterClick(nil);
end;

procedure TForm3.d1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.DateTimePicker1Change(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure TForm3.DateTimePicker2Change(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure DisplayForm6();
begin
 // ���������� ���� (Trunc "��������" �����)
 Form6.DatePicker1.Date :=
 Trunc(DataModule2.T_operationsoDateTime.value);
 // ���������� �������
 Form6.TimePicker1.Time :=
 TimeOf(DataModule2.T_operationsoDateTime.value);
 // ����� ������ �����
 Form6.ShowModal;
end;

procedure TForm3.E_FilterChange(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_v_storage.DisableControls;
 DataModule2.Q_v_storage.Active := false;
 baseSQL := 'SELECT * FROM view_storage ';
 filter_s := '';
 if length(E_Filter.Text) > 0 then
 filter_s := 'WHERE tgName LIKE ' + QuotedStr('%' + E_Filter.Text +
 '%') + ' OR gcName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
 ' OR markName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
 ' OR modelName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
 ' OR Articul LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
 DataModule2.Q_v_storage.SQL.Text := baseSQL + filter_s;
 DataModule2.Q_v_storage.Active := true;
 DataModule2.Q_v_storage.EnableControls;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm3.N5Click(Sender: TObject);
begin
  DataModule2.frxReport1.ShowReport();
end;

procedure TForm3.N6Click(Sender: TObject);
begin
  DataModule2.frxReport2.ShowReport();
end;

procedure TForm3.N7Click(Sender: TObject);
begin
  DataModule2.frxReport3.ShowReport();
end;

procedure TForm3.N8Click(Sender: TObject);
begin
  DataModule2.frxReport4.ShowReport();
end;

procedure TForm3.PM_add_saleClick(Sender: TObject);
begin
  // ������� Now() ���������� ������� ���� � �����
 DataModule2.T_operations.AppendRecord([nil, Now(), 1]);
 DisplayForm6();
end;

procedure TForm3.PM_add_supplyClick(Sender: TObject);
begin
  DataModule2.T_operations.AppendRecord([nil, Now(), 0]);
  DisplayForm6();
end;

procedure TForm3.PM_Edit_OperationClick(Sender: TObject);
begin
  DisplayForm6();
end;

procedure TForm3.RadioGroup1Click(Sender: TObject);
begin
  // ��������� ����� � ���������� �����������
 DataModule2.Q_v_goods_operations.DisableControls;
 // ������������ �� Q_v_goods_operations
 DataModule2.Q_v_goods_operations.active := false;
 // ������� SQL ��� � �� Q_v_goods_operations
 DataModule2.Q_v_goods_operations.SQL.Clear;
 // ��������� ������� ����� SQL ������� �� ����� ������
 DataModule2.Q_v_goods_operations.SQL.Add
 ('SELECT * FROM view_goods_operations ');
 // � ����������� �� ���������� �������� � RadioGroup1 ���������
 // ������� ������� � SQL ������
 if RadioGroup1.ItemIndex = 1 then
 DataModule2.Q_v_goods_operations.SQL.Add('WHERE oIsSale = 1 ');
 if RadioGroup1.ItemIndex = 2 then
 DataModule2.Q_v_goods_operations.SQL.Add('WHERE oIsSale = 0 ');
 // ���������� �� Q_v_goods_operations
 DataModule2.Q_v_goods_operations.active := true;
 // �������� ����� � ���������� �����������
 DataModule2.Q_v_goods_operations.EnableControls;
end;

procedure TForm3.SpinEdit1Change(Sender: TObject);
begin
  ChkCountFilterClick(nil);
end;

end.
