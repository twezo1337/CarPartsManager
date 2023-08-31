unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Data.DB;

type
  TForm12 = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    DBImage1: TDBImage;
    DBText1: TDBText;
    Label9: TLabel;
    Label4: TLabel;
    DBText9: TDBText;
    DBText4: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label8: TLabel;
    Label1: TLabel;
    DBText8: TDBText;
    Label5: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit10, Unit11, Unit8, Unit9, Unit2;

procedure TForm12.Button1Click(Sender: TObject);
begin
  DataModule2.frxReport5.ShowReport();
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
    if DataModule2.T_user_basket.State = dsBrowse then
      if MessageDlg('Подтвердите удаление записи', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    DataModule2.T_user_basket.Delete;
end;

procedure TForm12.FormShow(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
  label7.Caption := UPhone;
  DataModule2.Q_v_user_basket.DisableControls;
  DataModule2.Q_v_user_basket.Active := false;
  baseSQL := 'SELECT * FROM view_user_basket ';
  filter_s := '';
  filter_s := 'WHERE IDuser LIKE ' + QuotedStr('%' + idUser +
  '%');
  DataModule2.Q_v_user_basket.SQL.Text := baseSQL + filter_s;
  DataModule2.Q_v_user_basket.Active := true;
  DataModule2.Q_v_user_basket.EnableControls;
end;

procedure TForm12.N1Click(Sender: TObject);
begin
  Close;
end;

end.
