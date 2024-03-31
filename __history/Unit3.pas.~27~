unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
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
    ADOQuery1: TADOQuery;
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

procedure LoadQuestion;
var
  i: Integer;
  questionID: Integer;
  questionText: string;
begin
  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT TOP 36 * FROM questions ORDER BY code ASC';
  Form3.ADOQuery1.Open;


  Form3.ADOQuery1.First;
  for i := 1 to 36 do
  begin
    if not Form3.ADOQuery1.Eof then
    begin
    questionID := Form3.ADOQuery1.FieldByName('code').AsInteger; // Получаем ID
      questionText := Form3.ADOQuery1.FieldByName('question text').AsString; // Получаем текст вопроса

      case i of
        1: Form3.RadioGroup1.Caption := Format('%d. %s', [questionID, questionText]);
        2: Form3.RadioGroup2.Caption := Format('%d. %s', [questionID, questionText]);
        3: Form3.RadioGroup3.Caption := Format('%d. %s', [questionID, questionText]);
        4: Form3.RadioGroup4.Caption := Format('%d. %s', [questionID, questionText]);
        5: Form3.RadioGroup5.Caption := Format('%d. %s', [questionID, questionText]);
        6: Form3.RadioGroup6.Caption := Format('%d. %s', [questionID, questionText]);
        7: Form3.RadioGroup7.Caption := Format('%d. %s', [questionID, questionText]);
        8: Form3.RadioGroup8.Caption := Format('%d. %s', [questionID, questionText]);
        9: Form3.RadioGroup9.Caption := Format('%d. %s', [questionID, questionText]);
        10: Form3.RadioGroup10.Caption := Format('%d. %s', [questionID, questionText]);
        11: Form3.RadioGroup11.Caption := Format('%d. %s', [questionID, questionText]);
        12: Form3.RadioGroup12.Caption := Format('%d. %s', [questionID, questionText]);
        13: Form3.RadioGroup13.Caption := Format('%d. %s', [questionID, questionText]);
        14: Form3.RadioGroup14.Caption := Format('%d. %s', [questionID, questionText]);
        15: Form3.RadioGroup15.Caption := Format('%d. %s', [questionID, questionText]);
        16: Form3.RadioGroup16.Caption := Format('%d. %s', [questionID, questionText]);
        17: Form3.RadioGroup17.Caption := Format('%d. %s', [questionID, questionText]);
        18: Form3.RadioGroup18.Caption := Format('%d. %s', [questionID, questionText]);
        19: Form3.RadioGroup19.Caption := Format('%d. %s', [questionID, questionText]);
        20: Form3.RadioGroup20.Caption := Format('%d. %s', [questionID, questionText]);
        21: Form3.RadioGroup21.Caption := Format('%d. %s', [questionID, questionText]);
        22: Form3.RadioGroup22.Caption := Format('%d. %s', [questionID, questionText]);
        23: Form3.RadioGroup23.Caption := Format('%d. %s', [questionID, questionText]);
        24: Form3.RadioGroup24.Caption := Format('%d. %s', [questionID, questionText]);
        25: Form3.RadioGroup25.Caption := Format('%d. %s', [questionID, questionText]);
        26: Form3.RadioGroup26.Caption := Format('%d. %s', [questionID, questionText]);
        27: Form3.RadioGroup27.Caption := Format('%d. %s', [questionID, questionText]);
        28: Form3.RadioGroup28.Caption := Format('%d. %s', [questionID, questionText]);
        29: Form3.RadioGroup29.Caption := Format('%d. %s', [questionID, questionText]);
        30: Form3.RadioGroup30.Caption := Format('%d. %s', [questionID, questionText]);
        31: Form3.RadioGroup31.Caption := Format('%d. %s', [questionID, questionText]);
        32: Form3.RadioGroup32.Caption := Format('%d. %s', [questionID, questionText]);
        33: Form3.RadioGroup33.Caption := Format('%d. %s', [questionID, questionText]);
        34: Form3.RadioGroup34.Caption := Format('%d. %s', [questionID, questionText]);
        35: Form3.RadioGroup35.Caption := Format('%d. %s', [questionID, questionText]);
        36: Form3.RadioGroup36.Caption := Format('%d. %s', [questionID, questionText]);
      end;
      Form3.ADOQuery1.Next;
    end
    else
      Break; // Если не хватает строк в таблице, выходим из цикла
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
  LoadQuestion;
  LoadAnswersForQuestion(1, RadioGroup1); LoadAnswersForQuestion(2, RadioGroup2);
  LoadAnswersForQuestion(3, RadioGroup3); LoadAnswersForQuestion(4, RadioGroup4);
  LoadAnswersForQuestion(5, RadioGroup5); LoadAnswersForQuestion(6, RadioGroup6);
  LoadAnswersForQuestion(7, RadioGroup7); LoadAnswersForQuestion(8, RadioGroup8);
  LoadAnswersForQuestion(9, RadioGroup9); LoadAnswersForQuestion(10, RadioGroup10);
end;

end.
