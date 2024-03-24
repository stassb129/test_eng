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
    Edit3: TEdit;
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
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}



procedure TForm4.Button2Click(Sender: TObject);
begin
  Form1.Show;
  Form4.Visible:= False;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  Query: TADOQuery;
  name, familiya,data: string;
begin
 name := edit1.Text;
 familiya := edit2.Text;
 data := edit3.Text;
   if (name <> '') and (familiya <> '') and (data <> '') then
  begin
  // Создаем экземпляр TADOQuery
  Query := TADOQuery.Create(nil);
  try
    // Устанавливаем соединение для TADOQuery (замените YourADOConnection на ваш объект TADOConnection)
    Query.Connection := ADOConnection1;

    // Подготавливаем SQL-запрос для вставки данных в таблицу (замените Database1..mdb на вашу таблицу)
    Query.SQL.Text := 'INSERT INTO регистрация (name, familiya, data) VALUES (:name, :familiya, :data)';

    // Задаем параметры для логина и пароля
    Query.Parameters.ParamByName('name').Value := edit1.Text;
    Query.Parameters.ParamByName('familiya').Value := edit2.Text;
    Query.Parameters.ParamByName('data').Value := edit3.Text;

    // Выполняем SQL-запрос
    Query.ExecSQL;
  finally
    // Освобождаем ресурсы, когда они больше не нужны
    Query.Free;
    Form1.Show;
    Form4.Visible:= False;
  end;
end
else
  begin
    // Выводим сообщение об ошибке, если поля логина или пароля пустые
    ShowMessage('Поля логина и пароля не должны быть пустыми.');
  end;
end;

end.
