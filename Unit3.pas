unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Math, System.Variants, System.Generics.Collections, System.Contnrs, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
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
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    RadioGroup8: TRadioGroup;
    RadioGroup9: TRadioGroup;
    RadioGroup10: TRadioGroup;
    RadioGroup11: TRadioGroup;
    RadioGroup12: TRadioGroup;
    RadioGroup13: TRadioGroup;
    RadioGroup14: TRadioGroup;
    RadioGroup15: TRadioGroup;
    RadioGroup16: TRadioGroup;
    RadioGroup17: TRadioGroup;
    RadioGroup18: TRadioGroup;
    RadioGroup19: TRadioGroup;
    RadioGroup20: TRadioGroup;
    RadioGroup21: TRadioGroup;
    RadioGroup22: TRadioGroup;
    RadioGroup23: TRadioGroup;
    RadioGroup24: TRadioGroup;
    RadioGroup25: TRadioGroup;
    RadioGroup26: TRadioGroup;
    RadioGroup27: TRadioGroup;
    RadioGroup28: TRadioGroup;
    RadioGroup29: TRadioGroup;
    RadioGroup30: TRadioGroup;
    RadioGroup31: TRadioGroup;
    RadioGroup32: TRadioGroup;
    RadioGroup33: TRadioGroup;
    RadioGroup34: TRadioGroup;
    RadioGroup35: TRadioGroup;
    RadioGroup36: TRadioGroup;
    DataSource1: TDataSource;
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

type
  TQuestion = class
  public
    ID: Integer;
    Text: string;
    constructor Create(const AText: string);
  end;

constructor TQuestion.Create(const AText: string);
begin
  Text := AText;
end;

procedure LoadRandomQuestions;
var
  i: Integer;
  Questions: TObjectList<TQuestion>;
  RandomIndex: Integer;
begin
  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT TOP 36 * FROM questions';
  Form3.ADOQuery1.Open;

  // Создаем список вопросов
  Questions := TObjectList<TQuestion>.Create;
  try
    Form3.ADOQuery1.First;
    while not Form3.ADOQuery1.Eof do
    begin
      Questions.Add(TQuestion.Create(Form3.ADOQuery1.FieldByName('question text').AsString));
      Form3.ADOQuery1.Next;
    end;

    // Выводим вопросы рандомно в каждый RadioGroup
    for i := 0 to Min(Questions.Count - 1, 35) do
    begin
      RandomIndex := Random(Questions.Count); // Генерируем случайный индекс
      case i of
        0: Form3.RadioGroup1.Caption := Questions[RandomIndex].Text;
        1: Form3.RadioGroup2.Caption := Questions[RandomIndex].Text;
        2: Form3.RadioGroup3.Caption := Questions[RandomIndex].Text;
        3: Form3.RadioGroup4.Caption := Questions[RandomIndex].Text;
        4: Form3.RadioGroup5.Caption := Questions[RandomIndex].Text;
        5: Form3.RadioGroup7.Caption := Questions[RandomIndex].Text;
        6: Form3.RadioGroup8.Caption := Questions[RandomIndex].Text;
        7: Form3.RadioGroup9.Caption := Questions[RandomIndex].Text;
        8: Form3.RadioGroup10.Caption := Questions[RandomIndex].Text;
        9: Form3.RadioGroup11.Caption := Questions[RandomIndex].Text;
        10: Form3.RadioGroup12.Caption := Questions[RandomIndex].Text;
        11: Form3.RadioGroup13.Caption := Questions[RandomIndex].Text;
        12: Form3.RadioGroup14.Caption := Questions[RandomIndex].Text;
        13: Form3.RadioGroup15.Caption := Questions[RandomIndex].Text;
        14: Form3.RadioGroup16.Caption := Questions[RandomIndex].Text;
        15: Form3.RadioGroup17.Caption := Questions[RandomIndex].Text;
        16: Form3.RadioGroup18.Caption := Questions[RandomIndex].Text;
        17: Form3.RadioGroup19.Caption := Questions[RandomIndex].Text;
        18: Form3.RadioGroup20.Caption := Questions[RandomIndex].Text;
        19: Form3.RadioGroup21.Caption := Questions[RandomIndex].Text;
        20: Form3.RadioGroup22.Caption := Questions[RandomIndex].Text;
        21: Form3.RadioGroup23.Caption := Questions[RandomIndex].Text;
        22: Form3.RadioGroup24.Caption := Questions[RandomIndex].Text;
        23: Form3.RadioGroup25.Caption := Questions[RandomIndex].Text;
        24: Form3.RadioGroup26.Caption := Questions[RandomIndex].Text;
        25: Form3.RadioGroup27.Caption := Questions[RandomIndex].Text;
        26: Form3.RadioGroup28.Caption := Questions[RandomIndex].Text;
        27: Form3.RadioGroup29.Caption := Questions[RandomIndex].Text;
        28: Form3.RadioGroup30.Caption := Questions[RandomIndex].Text;
        29: Form3.RadioGroup31.Caption := Questions[RandomIndex].Text;
        30: Form3.RadioGroup32.Caption := Questions[RandomIndex].Text;
        31: Form3.RadioGroup33.Caption := Questions[RandomIndex].Text;
        32: Form3.RadioGroup34.Caption := Questions[RandomIndex].Text;
        33: Form3.RadioGroup35.Caption := Questions[RandomIndex].Text;
        34: Form3.RadioGroup36.Caption := Questions[RandomIndex].Text;
        35: Form3.RadioGroup6.Caption := Questions[RandomIndex].Text;
      end;
      Questions.Delete(RandomIndex); // Удаляем использованный вопрос из списка
    end;
  finally
    Questions.Free;
  end;
end;

procedure LoadAnswersForQuestion(questionID: Integer; RadioGroup: TRadioGroup);
begin
  RadioGroup.Items.Clear; // Очистка предыдущих элементов

  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT * FROM answers WHERE [answer ID] = :QuestionID';
  Form3.ADOQuery1.Parameters.ParamByName('QuestionID').Value := questionID;
  Form3.ADOQuery1.Open;

  while not Form3.ADOQuery1.Eof do
  begin
    RadioGroup.Items.AddObject(Form3.ADOQuery1.FieldByName('answer text').AsString, TObject(Form3.ADOQuery1.FieldByName('answer ID').AsInteger));
    Form3.ADOQuery1.Next;
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  LoadRandomQuestions;
  LoadAnswersForQuestion(1, RadioGroup1); LoadAnswersForQuestion(2, RadioGroup2);
  LoadAnswersForQuestion(3, RadioGroup3); LoadAnswersForQuestion(4, RadioGroup4);
  LoadAnswersForQuestion(5, RadioGroup5); LoadAnswersForQuestion(6, RadioGroup6);
  LoadAnswersForQuestion(7, RadioGroup7); LoadAnswersForQuestion(8, RadioGroup8);
  LoadAnswersForQuestion(9, RadioGroup9); LoadAnswersForQuestion(10, RadioGroup10);
end;

end.
