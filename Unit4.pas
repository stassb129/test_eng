unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Label4: TLabel;
    Button2: TButton;
    Image1: TImage;
    Panel1: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit6;

{$R *.dfm}



procedure TForm4.Button2Click(Sender: TObject);
begin
  Form6.Show;
end;

 //��� ����
procedure TForm4.FormCreate(Sender: TObject);
begin
label2.caption := DatetoStr(Now);
end;
procedure TForm4.FormShow(Sender: TObject);
begin
 timer1.Enabled:=true;
end;
procedure TForm4.Timer1Timer(Sender: TObject);
begin
label2.caption := DatetoStr(Now);
end;






procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  Query: TADOQuery;
  name, familiya,data: string;
begin
 name := edit1.Text;
 familiya := edit2.Text;
 data := label2.caption;
   if (name <> '') and (familiya <> '') and (data <> '') then
  begin
  // ������� ��������� TADOQuery
  Query := TADOQuery.Create(nil);
  try
    // ������������� ���������� ��� TADOQuery (�������� YourADOConnection �� ��� ������ TADOConnection)
    Query.Connection := ADOConnection1;

    // �������������� SQL-������ ��� ������� ������ � ������� (�������� Database1..mdb �� ���� �������)
    Query.SQL.Text := 'INSERT INTO ����������� (name, familiya, data) VALUES (:name, :familiya, :data)';

    // ������ ��������� ��� ������ � ������
    Query.Parameters.ParamByName('name').Value := edit1.Text;
    Query.Parameters.ParamByName('familiya').Value := edit2.Text;
    Query.Parameters.ParamByName('data').Value := label2.caption;

    // ��������� SQL-������
    Query.ExecSQL;
  finally
    // ����������� �������, ����� ��� ������ �� �����
    Query.Free;
    Form1.Show;
    Form4.Visible:= False;
  end;
end
else
  begin
    // ������� ��������� �� ������, ���� ���� ������ ��� ������ ������
    ShowMessage('���� ������ � ������ �� ������ ���� �������.');
  end;
end;


end.
