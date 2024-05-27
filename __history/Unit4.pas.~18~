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
    Image1: TImage;
    Panel1: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    Label2: TLabel;
    Timer1: TTimer;
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
  UserID: Integer;

implementation

uses Unit1;

{$R *.dfm}

 //для даты
procedure TForm4.FormCreate(Sender: TObject);
begin
label2.caption := DatetoStr(Now);
end;
procedure TForm4.FormShow(Sender: TObject);
begin
form4.Enabled:=true;
 timer1.Enabled:=true;
end;
procedure TForm4.Timer1Timer(Sender: TObject);
begin
label2.caption := DatetoStr(Now);
end;






procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  name, familiya,data: string;
begin
 name := edit1.Text;
 familiya := edit2.Text;
 data := label2.caption;
   if (name <> '') and (familiya <> '') and (data <> '') then
  begin
  try

    // Подготавливаем SQL-запрос для вставки данных в таблицу (замените Database1..mdb на вашу таблицу)
    ADOQuery1.SQL.Text := 'INSERT INTO регистрация (name, familiya, data) VALUES (:name, :familiya, :data)';
    
    // Задаем параметры для логина и пароля
    ADOQuery1.Parameters.ParamByName('name').Value := edit1.Text;
    ADOQuery1.Parameters.ParamByName('familiya').Value := edit2.Text;
    ADOQuery1.Parameters.ParamByName('data').Value := label2.caption;

    // Выполняем SQL-запрос
    ADOQuery1.ExecSQL;

      // Получаем сгенерированный ID
      ADOQuery1.SQL.Text := 'SELECT @@IDENTITY AS id';
      ADOQuery1.Open;
      UserID := ADOQuery1.FieldByName('id').AsInteger;

    finally
    ADOQuery1.Free;  // Освобождаем ресурсы, когда они больше не нужны

    Form1.Show;
    Form4.Visible:= False;
  end;
end
else
  begin
    // Выводим сообщение об ошибке, если поля логина или пароля пустые
    ShowMessage('Поля имени и фамилии не должны быть пустыми.');
  end;
end;


end.
