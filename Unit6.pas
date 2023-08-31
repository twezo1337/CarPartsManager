unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.WinXPickers,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TForm6 = class(TForm)
    P_EditOperationInfo: TPanel;
    GB_DateTime: TGroupBox;
    GB_Supplier: TGroupBox;
    DatePicker1: TDatePicker;
    TimePicker1: TTimePicker;
    DBL_supplier: TDBLookupComboBox;
    B_ModifyOperationInfo: TButton;
    DBGrid1: TDBGrid;
    P_BaseControl: TPanel;
    P_ModifyData: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    B_CompleteModifyOperation: TButton;
    Label1: TLabel;
    DBText1: TDBText;
    DBL_goods_selector: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    Button5: TButton;
    DBEdit1: TDBEdit;
    DBText2: TDBText;
    procedure DatePicker1Change(Sender: TObject);
    procedure TimePicker1Change(Sender: TObject);
    procedure B_ModifyOperationInfoClick(Sender: TObject);
    procedure B_CompleteModifyOperationClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TForm6.Button1Click(Sender: TObject);
begin
  if DataModule2.T_op_goods_list.State = dsBrowse then
 begin
 DBGrid1.Enabled := false; // ������������ ��������� DBGrid1
 // ��������� � ���������, ��� ����� �� ������
 DataModule2.Q_v_selector_goods.Parameters[1].Value := -1;
 // ��������� �� ������ ������� ��� DBL_goods_selector
 DataModule2.Q_v_selector_goods.Requery();
 // �������� ����� ����������
 DataModule2.T_op_goods_list.Append;
 P_ModifyData.Visible := true; // ���������� ������
 P_BaseControl.Visible := false; // �������� ������
 P_EditOperationInfo.Enabled := false; // ������������ ������
 end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  if DataModule2.T_op_goods_list.State = dsBrowse then
   begin
     DBGrid1.Enabled := false; // ������������ ��������� DBGrid1
     // �������������� ����� ������ �� ������� ������
     DataModule2.Q_v_selector_goods.Locate('IDgc',
     DataModule2.T_op_goods_listIDgc.Value, []);
     DataModule2.T_op_goods_list.edit; // ���������� �������������� ��
     P_ModifyData.Visible := true; // ���������� ������
     P_BaseControl.Visible := false; // �������� ������
     P_EditOperationInfo.Enabled := false; // ������������ ������
   end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  if DataModule2.T_op_goods_list.State = dsBrowse then
 if MessageDlg('����������� �������� ������', mtConfirmation,
 [mbYes, mbNo], 0) = mrYes then
 DataModule2.T_op_goods_list.Delete;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  if DataModule2.T_op_goods_list.State in [dsEdit, dsInsert] then
 begin // ���� ��������� � ������ �������������� ��� ���������� ��
 DataModule2.T_op_goods_list.post; // ��������� ������ ��
 P_BaseControl.Visible := true; // ���������� ������
 P_ModifyData.Visible := false; // �������� ������
 DBGrid1.Enabled := true; // ���������� ��������� DBGrid1
 P_EditOperationInfo.Enabled := true; // ���������� ������
 end;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
  if DataModule2.T_op_goods_list.State in [dsEdit, dsInsert] then
 begin // ���� ��������� � ������ �������������� ��� ���������� ��
 DataModule2.T_op_goods_list.Cancel; // �������� ��������� � ��
 P_BaseControl.Visible := true; // ���������� ������
 P_ModifyData.Visible := false; // �������� ������
 DBGrid1.Enabled := true; // ���������� ��������� DBGrid1
 P_EditOperationInfo.Enabled := true; // ���������� ������
 end;
end;

procedure TForm6.B_CompleteModifyOperationClick(Sender: TObject);
begin
  // ��������� �����
 Form6.Close;
end;

procedure TForm6.B_ModifyOperationInfoClick(Sender: TObject);
begin
  // ���� ������ ������ � ������ ��������������
 if DataModule2.T_operations.State = dsEdit then
 // ���������� ���������
 DataModule2.T_operations.post;
end;

procedure TForm6.DatePicker1Change(Sender: TObject);
begin
  // ���� �� ����� ���������� ����� ������������ ��������� �������
 // ������������ ����������� � ��
 if Form6.Active and (DataModule2.T_operationsoDateTime.Value <>
 (DatePicker1.Date + TimePicker1.Time)) then
 begin
 // ��������� �� � ����� �������������� ���� �� �� ���������
 // � ������ ������
 if DataModule2.T_operations.State = dsBrowse then
 DataModule2.T_operations.edit;
 // ��������� ��� TDateTime (���������� ��� ����� TDate � TTime)
 DataModule2.T_operationsoDateTime.Value := DatePicker1.Date +
 TimePicker1.Time;
end;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if P_ModifyData.Visible then
   begin
   // ���� �� ����������� ������, �� ������� ���������
    ShowMessage ('� ������ ������ ���������� ��������� ������� ������� � ������ ��������, �� �� ������ ��������� ����������');
   // ������������� ��� ����� CanClose �������� ���������,
   // ��� ������ ������� �����
   CanClose := false;
   //��� ������ ������� exit() ���������� ���������� ���
   exit();
   end;
   // ���� �������������� ������� ������� �������� ��
   // �� ��������� ���������� ������� � �������� � ���� �� ���
   if DataModule2.T_op_goods_list.RecordCount = 0 then
   begin // �� ��������� ������ ��������� � ������� ��������
   if DataModule2.T_operations.State = dsEdit then
   DataModule2.T_operations.Cancel;
   // ������� ������ �� ��������
   DataModule2.T_operations.Delete;
   end // � ������ ���� � �������� ������������ ������,
   // �� ��������� ���� �� ��������� � ������
   else if DataModule2.T_operations.State = dsEdit then
   begin // � ������ ���� ��������� ��������� ���������,
   // ������������� ������������� ����������
   if MessageDlg('����������� ���������� ���������� ������ ��������',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   // ��������� ��������� ��� ��������� �������������
   DataModule2.T_operations.post
   else // � ��������� ������ ��������� ������
   DataModule2.T_operations.Cancel;
   end;
   // ��������� ������ � Q_v_goods_operations ��������
   // ������������ ������� AfterPost
   DataModule2.T_operationsAfterPost(nil);
   // ��������� ������ � �� Q_v_storage
   DataModule2.Q_v_storage.Requery;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  if DataModule2.T_operationsoIsSale.Value = 1 then
   begin
    GB_Supplier.Visible := false;
    GB_DateTime.Caption := '���� � ����� ������� ������';
   end
   else
   begin
     GB_DateTime.Caption := '���� � ����� �������� ������';
     GB_Supplier.Visible := true;
   end;
end;

procedure TForm6.TimePicker1Change(Sender: TObject);
begin
  // ���� �� ����� ���������� ����� ������������ ��������� �������
 // ������������ ����������� � ��
 if Form6.Active and (DataModule2.T_operationsoDateTime.Value <>
 (DatePicker1.Date + TimePicker1.Time)) then
 begin
 // ��������� �� � ����� �������������� ���� �� �� ���������
 // � ������ ������
 if DataModule2.T_operations.State = dsBrowse then
 DataModule2.T_operations.edit;
 // ��������� ��� TDateTime (���������� ��� ����� TDate � TTime)
 DataModule2.T_operationsoDateTime.Value := DatePicker1.Date +
 TimePicker1.Time;
end;
end;

end.
