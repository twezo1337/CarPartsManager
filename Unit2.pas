unit Unit2;

interface

uses
  System.SysUtils, System.Classes, System.Variants, Data.Win.ADODB, Data.DB, Dialogs,
  frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    T_goods_catalog: TADOTable;
    T_type_goods: TADOTable;
    T_supliers_catalog: TADOTable;
    T_operations: TADOTable;
    T_op_goods_list: TADOTable;
    T_storage: TADOTable;
    DS_T_goods_catalog: TDataSource;
    DS_T_type_goods: TDataSource;
    DS_T_supliers_catalog: TDataSource;
    DS_T_operations: TDataSource;
    DS_T_op_goods_list: TDataSource;
    DS_T_storage: TDataSource;
    Q_v_goods_catalog: TADOQuery;
    Q_v_goods_operations: TADOQuery;
    Q_v_storage: TADOQuery;
    DS_Q_v_goods_catalog: TDataSource;
    DS_Q_v_goods_operations: TDataSource;
    DS_Q_v_storage: TDataSource;
    T_supliers_catalogIDsc: TAutoIncField;
    T_supliers_catalogscName: TStringField;
    T_supliers_catalogscAddres: TStringField;
    T_supliers_catalogscPhone: TStringField;
    T_supliers_catalogscEmail: TStringField;
    Q_v_operation_goods_list: TADOQuery;
    DS_Q_v_operation_goods_list: TDataSource;
    Q_v_goods_operationsIDoperation: TAutoIncField;
    Q_v_goods_operationsoDateTime: TDateTimeField;
    Q_v_goods_operationsoIsSale: TSmallintField;
    Q_v_goods_operationsopType: TWideStringField;
    Q_v_goods_operationsoFullCost: TFMTBCDField;
    Q_v_goods_operationsscName: TWideStringField;
    Q_v_operations_fullcost: TADOQuery;
    DS_Q_v_operations_fullcost: TDataSource;
    Q_v_selector_goods: TADOQuery;
    DS_Q_v_selector_goods: TDataSource;
    T_op_goods_listIDoperation: TIntegerField;
    T_op_goods_listIDgc: TIntegerField;
    T_op_goods_listocCount: TIntegerField;
    Q_v_selector_goodsIDgc: TAutoIncField;
    Q_v_selector_goodssNameCost: TWideStringField;
    Q_v_selector_goodssCount: TIntegerField;
    Q_avg_cost_by_type: TADOQuery;
    Q_sales_by_days: TADOQuery;
    Q_storage_count: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    op_master: TfrxDBDataset;
    frxReport3: TfrxReport;
    op_detail: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport4: TfrxReport;
    T_goods_catalogIDgc: TAutoIncField;
    T_goods_cataloggcName: TWideStringField;
    T_goods_catalogIDtg: TIntegerField;
    T_goods_cataloggcDesription: TWideStringField;
    T_goods_cataloggcPhoto: TBlobField;
    T_goods_cataloggcCost: TBCDField;
    T_goods_catalogIDcars: TIntegerField;
    T_goods_catalogArticul: TIntegerField;
    Q_v_cars_list: TADOQuery;
    DS_Q_v_cars_list: TDataSource;
    Q_v_storageIDstorage: TAutoIncField;
    Q_v_storageIDgc: TIntegerField;
    Q_v_storagegcName: TWideStringField;
    Q_v_storageArticul: TIntegerField;
    Q_v_storageIDtg: TIntegerField;
    Q_v_storagetgName: TWideStringField;
    Q_v_storagemarkName: TWideStringField;
    Q_v_storagemodelName: TWideStringField;
    Q_v_storagegenName: TWideStringField;
    Q_v_storagesCount: TIntegerField;
    Q_v_operation_goods_listIDoperation: TIntegerField;
    Q_v_operation_goods_listIDgc: TIntegerField;
    Q_v_operation_goods_listtgName: TWideStringField;
    Q_v_operation_goods_listgcName: TWideStringField;
    Q_v_operation_goods_listmarkName: TWideStringField;
    Q_v_operation_goods_listmodelName: TWideStringField;
    Q_v_operation_goods_listgenName: TWideStringField;
    Q_v_operation_goods_listocCount: TIntegerField;
    Q_v_operation_goods_listgcCost: TBCDField;
    Q_v_operation_goods_listogcFCost: TFMTBCDField;
    T_users: TADOTable;
    DS_T_users: TDataSource;
    Q_v_goods_catalogIDgc: TAutoIncField;
    Q_v_goods_catalogtgName: TWideStringField;
    Q_v_goods_cataloggcName: TWideStringField;
    Q_v_goods_cataloggcDesription: TWideStringField;
    Q_v_goods_catalogmarkName: TWideStringField;
    Q_v_goods_catalogmodelName: TWideStringField;
    Q_v_goods_cataloggenName: TWideStringField;
    Q_v_goods_catalogtransName: TWideStringField;
    Q_v_goods_catalogArticul: TIntegerField;
    Q_v_goods_cataloggcPhoto: TBlobField;
    Q_v_goods_cataloggcCost: TBCDField;
    Q_v_goods_catalogsCount: TIntegerField;
    Q_v_users: TADOQuery;
    DS_Q_v_users: TDataSource;
    T_user_basket: TADOTable;
    DS_T_user_basket: TDataSource;
    Q_v_user_basket: TADOQuery;
    DS_Q_v_user_basket: TDataSource;
    Q_v_user_basketIDuser: TIntegerField;
    Q_v_user_basketIDgc: TIntegerField;
    Q_v_user_basketuserName: TWideStringField;
    Q_v_user_basketuserPhone: TWideStringField;
    Q_v_user_baskettgName: TWideStringField;
    Q_v_user_basketgcName: TWideStringField;
    Q_v_user_basketArticul: TIntegerField;
    Q_v_user_basketmarkName: TWideStringField;
    Q_v_user_basketmodelName: TWideStringField;
    Q_v_user_basketgenName: TWideStringField;
    Q_v_user_basketgcPhoto: TBlobField;
    Q_v_user_basketgcCost: TBCDField;
    frxDBDataset3: TfrxDBDataset;
    frxReport5: TfrxReport;
    T_user_basketIDuser: TIntegerField;
    T_user_basketIDgc: TIntegerField;
    T_storageIDstorage: TAutoIncField;
    T_storageIDgc: TIntegerField;
    T_storagesCount: TIntegerField;
    T_operationsIDoperation: TAutoIncField;
    T_operationsoDateTime: TDateTimeField;
    T_operationsoIsSale: TSmallintField;
    T_operationsIDsc: TIntegerField;
    procedure Q_v_goods_catalogAfterScroll(DataSet: TDataSet);
    procedure Q_v_goods_catalogAfterDelete(DataSet: TDataSet);
    procedure Q_v_goods_catalogAfterPost(DataSet: TDataSet);
    procedure Q_v_goods_operationsAfterScroll(DataSet: TDataSet);
    procedure Q_v_operation_goods_listAfterScroll(DataSet: TDataSet);
    procedure T_operationsAfterPost(DataSet: TDataSet);
    procedure T_operationsAfterDelete(DataSet: TDataSet);
    procedure T_op_goods_listAfterDelete(DataSet: TDataSet);
    procedure T_op_goods_listAfterPost(DataSet: TDataSet);
    procedure T_supliers_catalogscEmailValidate(Sender: TField);
    procedure T_goods_cataloggcCostSetText(Sender: TField; const Text: string);
    procedure T_op_goods_listocCountChange(Sender: TField);
    procedure T_op_goods_listBeforePost(DataSet: TDataSet);
    procedure T_goods_catalogBeforePost(DataSet: TDataSet);
    procedure T_supliers_catalogscNameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure T_user_basketAfterDelete(DataSet: TDataSet);
    procedure T_user_basketAfterPost(DataSet: TDataSet);
    procedure Q_v_user_basketAfterScroll(DataSet: TDataSet);
    procedure Q_v_user_basketAfterPost(DataSet: TDataSet);
    procedure Q_v_user_basketAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit6, Unit3, Unit10, Unit11, Unit12;

{$R *.dfm}

procedure TDataModule2.Q_v_goods_catalogAfterDelete(DataSet: TDataSet);
begin
  Q_v_goods_catalog.DisableControls();
  Q_v_goods_catalog.Requery();
  Q_v_storage.Requery();
  Q_v_goods_catalog.EnableControls();
end;

procedure TDataModule2.Q_v_goods_catalogAfterPost(DataSet: TDataSet);
var pos:TBookmark;
begin
   // �������� ��� ������� ������ �������-��������
   pos := Q_v_goods_catalog.GetBookmark;
   Q_v_goods_catalog.Close();
   Q_v_goods_catalog.Open();
   // ����������� ������� �� �� ������, ������������ ���������
   Q_v_goods_catalog.GotoBookmark(pos);
   Q_v_storage.Requery();

end;

procedure TDataModule2.Q_v_goods_catalogAfterScroll(DataSet: TDataSet);
begin
  // �������� ���������� ������������ �������
 if Q_v_goods_catalog.RecordCount > 0 then
 // ���������� ������������� ������� Locate
 T_goods_catalog.Locate('IDgc', Q_v_goods_catalogIDgc.Value, [])
end;

procedure TDataModule2.Q_v_goods_operationsAfterScroll(DataSet: TDataSet);
begin
  if Q_v_goods_operations.RecordCount > 0 then
      // ���������� ������������� ������� Locate
      T_operations.Locate('IDoperation', Q_v_goods_operationsIDoperation.Value, [])
end;

procedure TDataModule2.Q_v_operation_goods_listAfterScroll(DataSet: TDataSet);
begin
  // ���������, ���������� �� ������ (������� �� ����� Form5)
 if IsAppStatrtedFlag then
 if Q_v_operation_goods_list.RecordCount > 0 then
 begin // ��������� ��������� ������������� ���������� ������
 Q_v_selector_goods.Parameters[1].Value :=
 Q_v_operation_goods_listIDgc.Value;
 // ��������� �� ������ ������� ��� DBL_goods_selector
 Q_v_selector_goods.Requery();
 // �������������� �� T_op_goods_list
 T_op_goods_list.Locate('IDoperation;IDgc',
 VarArrayOf([Q_v_operation_goods_listIDoperation.Value,
 Q_v_operation_goods_listIDgc.Value]), []);
 end;
end;

procedure TDataModule2.Q_v_user_basketAfterDelete(DataSet: TDataSet);
begin
  Q_v_user_basket.DisableControls();
  Q_v_user_basket.Requery();
  Q_v_user_basket.EnableControls();
end;

procedure TDataModule2.Q_v_user_basketAfterPost(DataSet: TDataSet);
var pos1:TBookmark;
begin
   // �������� ��� ������� ������ �������-��������
   pos1 := Q_v_user_basket.GetBookmark;
   Q_v_user_basket.Close();
   Q_v_user_basket.Open();
   // ����������� ������� �� �� ������, ������������ ���������
   Q_v_user_basket.GotoBookmark(pos1);
end;

procedure TDataModule2.Q_v_user_basketAfterScroll(DataSet: TDataSet);
begin
  // �������� ���������� ������������ �������
 if Q_v_user_basket.RecordCount > 0 then
 // ���������� ������������� ������� Locate
 T_user_basket.Locate('IDuser', Q_v_goods_catalogIDgc.Value, [])
end;

procedure TDataModule2.T_goods_catalogBeforePost(DataSet: TDataSet);
begin
  if T_goods_catalogIDtg.IsNull or T_goods_cataloggcCost.IsNull or
 (Length(T_goods_cataloggcName.AsString) < 2) then
 raise Exception.Create('������������ ������, ��� ������ � ' +
 '���� �� ������ ����� ������ ��������, � ����� ������������ ' +
 '������ ����� �������� ������ (����� ���� ��������)');
end;

procedure TDataModule2.T_goods_cataloggcCostSetText(Sender: TField;
  const Text: string);
var
 Tmp: double;
begin
 Tmp := StrToFloat(Text);
 if Tmp < 5 then
 ShowMessage('��������� ������ ������ ���� ������ 5 ���.')
 else
 T_goods_cataloggcCost.Value := Tmp;
end;


procedure TDataModule2.T_operationsAfterDelete(DataSet: TDataSet);
begin
  Q_v_goods_operations.DisableControls();
  Q_v_goods_operations.Requery();
  Q_v_goods_operations.EnableControls();
end;

procedure TDataModule2.T_operationsAfterPost(DataSet: TDataSet);
var
 IDoperation: integer;
begin
 IDoperation := T_operationsIDoperation.Value;
 Q_v_goods_operations.DisableControls();
 Q_v_goods_operations.Requery();
 Q_v_goods_operations.Locate('IDoperation', IDoperation, []);
 Q_v_goods_operations.EnableControls();
end;


procedure TDataModule2.T_op_goods_listAfterDelete(DataSet: TDataSet);
begin
  Q_v_operation_goods_list.DisableControls();
  Q_v_operation_goods_list.Requery();
  Q_v_operation_goods_list.EnableControls();
  Q_v_operations_fullcost.Requery();
end;

procedure TDataModule2.T_op_goods_listAfterPost(DataSet: TDataSet);
var
 IDgcVal: integer;
begin
 IDgcVal := T_op_goods_listIDgc.Value;
 Q_v_operation_goods_list.DisableControls();
 Q_v_operation_goods_list.Requery();
 Q_v_operation_goods_list.Locate('IDgc', IDgcVal, []);
 Q_v_operation_goods_list.EnableControls();
 Q_v_operations_fullcost.Requery();
end;


procedure TDataModule2.T_op_goods_listBeforePost(DataSet: TDataSet);
var
ErrMsgCnt: string; // ��� ��������� � ������������� ���������� ������
mod_val: integer; // ��� ������� ����������� ����������
begin
 ErrMsgCnt := '���������� ������������ ������ ������ ���� �� ������ ���������� �� ������. �������� ��� ���������� �������: ';
 if T_op_goods_listIDgc.IsNull or T_op_goods_listocCount.IsNull then
 raise Exception.Create('���������� ������� ������������ ������ �' +
' ������� ���������� ')
 else if (T_operationsoIsSale.Value = 1) then
 begin
 if T_op_goods_list.State = dsInsert then
 if (T_op_goods_listocCount.Value > Q_v_selector_goodssCount.Value) then
 raise Exception.Create(ErrMsgCnt + Q_v_selector_goodssCount.AsString);
 if T_op_goods_list.State = dsEdit then
 begin
 mod_val := Q_v_selector_goodssCount.Value + T_op_goods_listocCount.OldValue;
 if (T_op_goods_listIDgc.OldValue <> T_op_goods_listIDgc.NewValue)
 and (T_op_goods_listocCount.Value >
 Q_v_selector_goodssCount.Value) then
 raise Exception.Create(ErrMsgCnt +
 Q_v_selector_goodssCount.AsString)
 else
 if (T_op_goods_listIDgc.OldValue = T_op_goods_listIDgc.NewValue)
  and (T_op_goods_listocCount.Value > mod_val) then
 raise Exception.Create(ErrMsgCnt + inttostr(mod_val));
 end;
 end;
end;

procedure TDataModule2.T_op_goods_listocCountChange(Sender: TField);
begin
  if T_op_goods_listocCount.Value < 1 then
    raise Exception.Create
      ('���������� ������� ���������� �� ����� ����� ������� ������');
end;

procedure TDataModule2.T_supliers_catalogscEmailValidate(Sender: TField);
begin
  if not(pos('@', T_supliers_catalogscEmail.AsString) > 0) then
    begin
    ShowMessage('� ���� ����������� ������ @!');
    Abort;
  end;
end;

procedure TDataModule2.T_supliers_catalogscNameGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    Text := ' " ' + T_supliers_catalogscName.AsString + ' " ';
end;

procedure TDataModule2.T_user_basketAfterDelete(DataSet: TDataSet);
begin
  Q_v_user_basket.DisableControls();
  Q_v_user_basket.Requery();
  Q_v_user_basket.EnableControls();
end;

procedure TDataModule2.T_user_basketAfterPost(DataSet: TDataSet);
var
 IDgcVal: integer;
begin
 IDgcVal := T_user_basketIDuser.Value;
 Q_v_user_basket.DisableControls();
 Q_v_user_basket.Requery();
 Q_v_user_basket.Locate('IDuser', IDgcVal, []);
 Q_v_user_basket.EnableControls();
end;

end.
