unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ScrollBox1: TScrollBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label7: TLabel;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Bevel1: TBevel;
    Shape4: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Shape5: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Label13: TLabel;
    Edit4: TEdit;
    Shape6: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    LabeledEdit1: TLabeledEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Image1: TImage;
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
    Form3.RadioGroup1.Caption := Form3.ADOQuery1.FieldByName('question text').AsString;
end;

procedure LoadQuestion;
begin
  Form3.ADOQuery1.Close;
    Form3.ADOQuery1.SQL.Text := 'SELECT * FROM questions';
  Form3.ADOQuery1.Open;

  Form3.ADOQuery1.First;
  while not Form3.ADOQuery1.Eof do
  begin
   Form3.RadioGroup1.Caption := Form3.ADOQuery1.FieldByName('question text').AsString;
//    Form3.RadioGroup1.Items.AddObject(Form3.ADOQuery1.FieldByName('Текст вопроса').AsString);
    Form3.ADOQuery1.Next;
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
//  ADOTestQuestions.TableName := 'Вопросы';
//  ADOTestQuestions.Active := True;
//
//  ADOTestAnswers.TableName := 'Ответы';
//  ADOTestAnswers.Active := True;

//  LoadQuestions;
  LoadQuestion;
end;

end.
