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
    Image1: TImage;
    ADOConnection2: TADOConnection;
    ADOTable2: TADOTable;
    ADOQuery2: TADOQuery;
    Label21: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
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
    constructor Create(const AText: string; AID: Integer);
  end;

constructor TQuestion.Create(const AText: string; AID: Integer);
begin
  Text := AText;
  ID := AID;
end;

procedure LoadAnswersForQuestion(QuestionID: Integer; RadioGroup: TRadioGroup);
begin
  // Очищаем Items перед загрузкой новых ответов
  RadioGroup.Items.Clear;

  // Выполняем SQL-запрос для выбора ответов к вопросу с заданным ID
  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT [answer text] FROM answers WHERE [answer ID] = :QuestionID';
  Form3.ADOQuery1.Parameters.ParamByName('QuestionID').Value := QuestionID;
  Form3.ADOQuery1.Open;

  // Добавляем ответы в Items RadioGroup
  Form3.ADOQuery1.First;
  while not Form3.ADOQuery1.Eof do
  begin
    RadioGroup.Items.Add(Form3.ADOQuery1.FieldByName('answer text').AsString);
    Form3.ADOQuery1.Next;
  end;
end;

procedure LoadRandomQuestionsZad1;
var
  i, QuestionNumber: Integer;
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
      Questions.Add(TQuestion.Create(Form3.ADOQuery1.FieldByName('question text').AsString,
                    Form3.ADOQuery1.FieldByName('code').AsInteger));
      Form3.ADOQuery1.Next;
    end;

    QuestionNumber := 1; // Начальное значение порядкового номера вопроса

    // Выводим вопросы рандомно в каждый RadioGroup
    for i := 0 to Min(Questions.Count - 1, 35) do
    begin
      RandomIndex := Random(Questions.Count); // Генерируем случайный индекс
      case i of
      0: begin
               Form3.RadioGroup1.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup1);
         end;
      1: begin
               Form3.RadioGroup2.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup2);
         end;
      2: begin
               Form3.RadioGroup3.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup3);
         end;
      3: begin
               Form3.RadioGroup4.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup4);
         end;
      4: begin
               Form3.RadioGroup5.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup5);
         end;
      5: begin
               Form3.RadioGroup6.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup6);
         end;
      6: begin
               Form3.RadioGroup7.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup7);
         end;
      7: begin
               Form3.RadioGroup8.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup8);
         end;
      8: begin
               Form3.RadioGroup9.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup9);
         end;
      9: begin
               Form3.RadioGroup10.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup10);
         end;
      10: begin
               Form3.RadioGroup11.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup11);
         end;
      11: begin
               Form3.RadioGroup12.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup12);
         end;
      12: begin
               Form3.RadioGroup13.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup13);
         end;
      13: begin
               Form3.RadioGroup14.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup14);
         end;
      14: begin
               Form3.RadioGroup15.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup15);
         end;
      15: begin
               Form3.RadioGroup16.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup16);
         end;
      16: begin
               Form3.RadioGroup17.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup17);
         end;
      17: begin
               Form3.RadioGroup18.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup18);
         end;
      18: begin
               Form3.RadioGroup19.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup19);
         end;
      19: begin
               Form3.RadioGroup20.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup20);
         end;
      20: begin
               Form3.RadioGroup21.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup21);
         end;
      21: begin
               Form3.RadioGroup22.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup22);
         end;
      22: begin
               Form3.RadioGroup23.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup23);
         end;
      23: begin
               Form3.RadioGroup24.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup24);
         end;
      24: begin
               Form3.RadioGroup25.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup25);
         end;
      25: begin
               Form3.RadioGroup26.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup26);
         end;
      26: begin
               Form3.RadioGroup27.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup27);
         end;
      27: begin
               Form3.RadioGroup28.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup28);
         end;
      28: begin
               Form3.RadioGroup29.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup29);
         end;
      29: begin
               Form3.RadioGroup30.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup30);
         end;
      30: begin
               Form3.RadioGroup31.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup31);
         end;
      31: begin
               Form3.RadioGroup32.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup32);
         end;
      32: begin
               Form3.RadioGroup33.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup33);
         end;
      33: begin
               Form3.RadioGroup34.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup34);
         end;
      34: begin
               Form3.RadioGroup35.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup35);
         end;
      35: begin
               Form3.RadioGroup36.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form3.RadioGroup36);
         end;
      end;
      Inc(QuestionNumber); // Увеличиваем порядковый номер вопроса
      Questions.Delete(RandomIndex); // Удаляем использованный вопрос из списка
    end;
  finally
    Questions.Free;
  end;
end;

procedure LoadQuestionsZad2;
begin
  Form3.ADOQuery2.Close;
  Form3.ADOQuery2.SQL.Text := 'SELECT TOP 2 [question text] FROM questions';
  Form3.ADOQuery2.Open;

  // Загружаем вопросы в Label4 и Label21
  if not Form3.ADOQuery2.IsEmpty then
  begin
    Form3.Label4.Caption := Form3.ADOQuery2.Fields[0].AsString;
    Form3.ADOQuery2.Next;
    if not Form3.ADOQuery2.IsEmpty then
      Form3.Label21.Caption := Form3.ADOQuery2.Fields[0].AsString;
  end;
end;

procedure LoadAnswersToGroupBox(RadioGroup: TGroupBox; StartIndex, Count: Integer);
var
  i, RowIndex: Integer;
  RadioButton: TRadioButton;
begin
  // Очищаем все RadioButton внутри GroupBox
  for i := 0 to RadioGroup.ControlCount - 1 do
  begin
    if RadioGroup.Controls[i] is TRadioButton then
      TRadioButton(RadioGroup.Controls[i]).Caption := '';
  end;

  // Выполняем SQL-запрос для выбора всех строк из столбца "answers text"
  Form3.ADOQuery2.Close;
  Form3.ADOQuery2.SQL.Text := 'SELECT [answer text] FROM answers';
  Form3.ADOQuery2.Open;

  // Перемещаем указатель на нужное место в результате запроса
  RowIndex := 0;
  while not Form3.ADOQuery2.Eof and (RowIndex < StartIndex) do
  begin
    Form3.ADOQuery2.Next;
    Inc(RowIndex);
  end;

  // Добавляем ответы в RadioButton внутри GroupBox
  for i := 0 to RadioGroup.ControlCount - 1 do
  begin
    if (RadioGroup.Controls[i] is TRadioButton) and (not Form3.ADOQuery2.Eof) then
    begin
      RadioButton := TRadioButton(RadioGroup.Controls[i]);
      RadioButton.Caption := Form3.ADOQuery2.FieldByName('answer text').AsString;
      Form3.ADOQuery2.Next;
      Inc(RowIndex);
      if RowIndex >= StartIndex + Count then
        Break; // Если загрузили нужное количество ответов, выходим из цикла
    end;
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  LoadRandomQuestionsZad1;
  LoadQuestionsZad2;
  LoadAnswersToGroupBox(GroupBox1, 0, 4);
  LoadAnswersToGroupBox(GroupBox2, 4, 4);
end;
end.
