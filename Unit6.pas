unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit4, Unit2;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  edit1.Text:='';
  Form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  if (Edit1.Text = 'english ce') then
  begin
    Form1.Show;

    if Form1.Visible then
    begin
      ADOQuery1.SQL.Text := 'INSERT INTO регистраци€ (name,data) VALUES (:name, :data)';
      ADOQuery1.Parameters.ParamByName('name').Value := 'админ';
      ADOQuery1.Parameters.ParamByName('data').Value := Form4.label2.caption;
      ADOQuery1.ExecSQL;

      Form6.Visible := False;
      Form4.Visible := False;
      Form1.Image3.Visible := True;
      Form2.Image3.Visible := True;
    end;
  end
  else
    ShowMessage('Ќеверный пароль!');
end;

procedure TForm6.FormShow(Sender: TObject);
begin       //  при открытии формы6 делаем неактивной форму4
Form4.Enabled:=false;
end;
procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin   //тут наоборот
form4.Enabled:=true;
end;

procedure TForm6.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin     //нажата ли лкм
    Edit1.PasswordChar := #0;
    Image1.Picture.LoadFromFile('C:\Users\XE\Desktop\test_eng\изобр\‘6входјдмина\глаз.png');
  end;

end;

procedure TForm6.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin   //нажата ли лкм
    Edit1.PasswordChar := '*';
    Image1.Picture.LoadFromFile('C:\Users\XE\Desktop\test_eng\изобр\‘6входјдмина\не√лаз.png');
  end;
end;

end.
