unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ScrollBox1: TScrollBox;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure LoadQuestions;
begin
  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT * FROM questions';
  Form3.ADOQuery1.Open;

  if not Form3.ADOQuery1.IsEmpty then
    Form3.RadioGroup1.Caption := Form3.ADOQuery1.FieldByName('����� �������').AsString;
end;

procedure LoadQuestion;
begin
  Form3.ADOQuery1.Close;
    Form3.ADOQuery1.SQL.Text := 'SELECT * FROM questions';
  Form3.ADOQuery1.Open;

  Form3.ADOQuery1.First;
  while not Form3.ADOQuery1.Eof do
  begin
   Form3.RadioGroup1.Caption := Form3.ADOQuery1.FieldByName('����� �������').AsString;
//    Form3.RadioGroup1.Items.AddObject(Form3.ADOQuery1.FieldByName('����� �������').AsString);
    Form3.ADOQuery1.Next;
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
//  ADOTestQuestions.TableName := '�������';
//  ADOTestQuestions.Active := True;
//
//  ADOTestAnswers.TableName := '������';
//  ADOTestAnswers.Active := True;

//  LoadQuestions;
  LoadQuestion;
end;

end.
