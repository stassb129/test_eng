unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm4.Button1Click(Sender: TObject);
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

    // Задаем параметры для логина и пароля (замените edit1 и edit2 на ваши компоненты ввода логина и пароля)
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

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form1.Show;
  Form4.Visible:= False;
end;

end.
