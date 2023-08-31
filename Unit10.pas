unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TForm10 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm10.Button1Click(Sender: TObject);
begin
  DataModule2.T_users.Insert;
  if DataModule2.T_users.State in [dsEdit, dsInsert] then
    begin // ���� ��������� � ������ �������������� ��� ���������� ��
        DataModule2.T_users.fieldbyname('userName').value:= Edit1.Text; //����� ��������
        DataModule2.T_users.fieldbyname('userPhone').value:= Edit2.Text; //����� ��������
        DataModule2.T_users.fieldbyname('userMail').value:= Edit3.Text; //����� ��������
        DataModule2.T_users.fieldbyname('userPas').value:= Edit4.Text; //����� ��������
        DataModule2.T_users.post; // ��������� ������ ��
    end;
    Close;
  end;
procedure TForm10.N1Click(Sender: TObject);
begin
  Close;
end;

end.
