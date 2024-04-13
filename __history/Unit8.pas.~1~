unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Math, System.Variants, System.Generics.Collections, System.Contnrs, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage, Vcl.MPlayer,
  Vcl.Buttons;

type
  TForm8 = class(TForm)
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Shape7: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Button1: TButton;
    ScrollBox1: TScrollBox;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Shape5: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Shape6: TShape;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
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
    GroupBox1: TGroupBox;
    Label20: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    Edit9: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit12: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    GroupBox3: TGroupBox;
    Label28: TLabel;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    ADOConnection3: TADOConnection;
    ADOQuery3: TADOQuery;
    ADOConnection4: TADOConnection;
    ADOQuery4: TADOQuery;
    ADOConnection5: TADOConnection;
    ADOQuery5: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit10Enter(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit11Enter(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  ball: Integer = 0;
  right:integer = 0;//правильные ответы
  incorrect : integer = 0; //неправильные ответы

implementation

uses Unit1,Unit4;

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



procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
 showmessage('Примечание: В случае возврата на главную форму прогресс будет сохранен.');
   Form1.Visible:= True;
   Form8.Visible:= False;
end;

procedure LoadAnswersForQuestion(QuestionID: Integer; RadioGroup: TRadioGroup);//процедура для вывода ответов 1-го задания
begin
//   Очищаем Items перед загрузкой новых ответов
  RadioGroup.Items.Clear;

//   Выполняем SQL-запрос для выбора ответов к вопросу с заданным ID
  Form8.ADOQuery1.Close;
  Form8.ADOQuery1.SQL.Text := 'SELECT [answer text] FROM answers WHERE [answer ID] = :QuestionID';
  Form8.ADOQuery1.Parameters.ParamByName('QuestionID').Value := QuestionID;
  Form8.ADOQuery1.Open;

  // Добавляем ответы в Items RadioGroup и возвращаем правильный ответ
  Form8.ADOQuery1.First;
  while not Form8.ADOQuery1.Eof do
  begin
    RadioGroup.Items.Add(Form8.ADOQuery1.FieldByName('answer text').AsString);

    Form8.ADOQuery1.Next;
  end;
end;

procedure LoadRandomQuestionsZad1;// вывод вопросов и ответов 1-го задания
var
  i, QuestionNumber: Integer;
  Questions: TObjectList<TQuestion>;
  RandomIndex: Integer;
begin
  Form8.ADOQuery1.Close;
  Form8.ADOQuery1.SQL.Text := 'SELECT TOP 35 * FROM questions';
  Form8.ADOQuery1.Open;

  // Создаем список вопросов
  Questions := TObjectList<TQuestion>.Create;
  try
    Form8.ADOQuery1.First;
    while not Form8.ADOQuery1.Eof do
    begin
      Questions.Add(TQuestion.Create(Form8.ADOQuery1.FieldByName('question text').AsString,
                    Form8.ADOQuery1.FieldByName('code').AsInteger));
      Form8.ADOQuery1.Next;
    end;

    QuestionNumber := 1; // Начальное значение порядкового номера вопроса

    // Выводим вопросы рандомно в каждый RadioGroup
    for i := 0 to Min(Questions.Count - 1, 34) do
    begin
      RandomIndex := Random(Questions.Count); // Генерируем случайный индекс
      case i of
      0: begin
               Form8.RadioGroup1.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup1);
         end;
      1: begin
               Form8.RadioGroup2.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup2);
         end;
      2: begin
               Form8.RadioGroup3.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup3);
         end;
      3: begin
               Form8.RadioGroup4.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup4);
         end;
      4: begin
               Form8.RadioGroup5.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup5);
         end;
      5: begin
               Form8.RadioGroup6.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup6);
         end;
      6: begin
               Form8.RadioGroup7.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup7);
         end;
      7: begin
               Form8.RadioGroup8.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup8);
         end;
      8: begin
               Form8.RadioGroup9.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup9);
         end;
      9: begin
               Form8.RadioGroup10.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup10);
         end;
      10: begin
               Form8.RadioGroup11.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup11);
         end;
      11: begin
               Form8.RadioGroup12.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup12);
         end;
      12: begin
               Form8.RadioGroup13.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup13);
         end;
      13: begin
               Form8.RadioGroup14.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup14);
         end;
      14: begin
               Form8.RadioGroup15.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup15);
         end;
      15: begin
               Form8.RadioGroup16.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup16);
         end;
      16: begin
               Form8.RadioGroup17.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup17);
         end;
      17: begin
               Form8.RadioGroup18.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup18);
         end;
      18: begin
               Form8.RadioGroup19.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup19);
         end;
      19: begin
               Form8.RadioGroup20.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup20);
         end;
      20: begin
               Form8.RadioGroup21.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup21);
         end;
      21: begin
               Form8.RadioGroup22.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup22);
         end;
      22: begin
               Form8.RadioGroup23.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup23);
         end;
      23: begin
               Form8.RadioGroup24.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup24);
         end;
      24: begin
               Form8.RadioGroup25.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup25);
         end;
      25: begin
               Form8.RadioGroup26.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup26);
         end;
      26: begin
               Form8.RadioGroup27.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup27);
         end;
      27: begin
               Form8.RadioGroup28.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup28);
         end;
      28: begin
               Form8.RadioGroup29.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup29);
         end;
      29: begin
               Form8.RadioGroup30.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup30);
         end;
      30: begin
               Form8.RadioGroup31.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup31);
         end;
      31: begin
               Form8.RadioGroup32.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup32);
         end;
      32: begin
               Form8.RadioGroup33.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup33);
         end;
      33: begin
               Form8.RadioGroup34.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup34);
         end;
      34: begin
               Form8.RadioGroup35.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form8.RadioGroup35);
         end;
      end;
      Inc(QuestionNumber); // Увеличиваем порядковый номер вопроса
      Questions.Delete(RandomIndex); // Удаляем использованный вопрос из списка
    end;
  finally
    Questions.Free;
  end;
end;

procedure CheckCorrectAnswer(RadioGroup: TRadioGroup);
var
  SelectedIndex: Integer;
  SelectedAnswer, CorrectAnswer: string;
begin
  // Получаем индекс выбранного ответа в RadioGroup
  SelectedIndex := RadioGroup.ItemIndex;

  // Проверяем, что был выбран какой-то ответ
  if SelectedIndex <> -1 then
  begin
    // Получаем выбранный ответ
    SelectedAnswer := RadioGroup.Items[SelectedIndex];

    // Выполняем SQL-запрос для выбора правильного ответа из базы данных
    Form8.ADOQuery1.Close;
    Form8.ADOQuery1.SQL.Text := 'SELECT [correct answer] FROM answers WHERE [answer text] = :SelectedAnswer';
    Form8.ADOQuery1.Parameters.ParamByName('SelectedAnswer').Value := SelectedAnswer;
    Form8.ADOQuery1.Open;

    // Проверяем правильность ответа
    if not Form8.ADOQuery1.IsEmpty then
    begin
      CorrectAnswer := Form8.ADOQuery1.FieldByName('correct answer').AsString;
      if CorrectAnswer = 'True' then
      begin
        Inc(Ball, 2);
        Inc(right);
      end
      else
         Inc(incorrect);
    end;
  end;
end;






procedure LoadQuestionsZad2; //процедура для вывода вопросов 2-го задания
begin
  Form8.ADOQuery2.Close;
  Form8.ADOQuery2.SQL.Text := 'SELECT TOP 3 [question text] FROM questions';
  Form8.ADOQuery2.Open;

  // Загружаем вопросы в groupbox
  if not Form8.ADOQuery2.IsEmpty then
  begin
    Form8.Label20.Caption :='36. ' + Form8.ADOQuery2.Fields[0].AsString;
    Form8.ADOQuery2.Next;
    if not Form8.ADOQuery2.IsEmpty then
      Form8.Label22.caption :='37. ' + Form8.ADOQuery2.Fields[0].AsString;
      Form8.ADOQuery2.Next;
    if not Form8.ADOQuery2.IsEmpty then
      Form8.Label28.caption :='38. ' + Form8.ADOQuery2.Fields[0].AsString;
  end;
end;

//процедура для вывода ответов 2-го задания
procedure LoadAnswersToGroupBox(GroupBox: TGroupBox; StartIndex, Count: Integer);
var
  i, RowIndex: Integer;
  RadioButton: TRadioButton;
begin

  // Выполняем SQL-запрос для выбора всех строк из столбца "answers text" и "correct answer"
  Form8.ADOQuery2.Close;
  Form8.ADOQuery2.SQL.Text := 'SELECT [answer text], [correct answer] FROM answers';
  Form8.ADOQuery2.Open;

  // Перемещаем указатель на нужное место в результате запроса
  RowIndex := 0;
  while not Form8.ADOQuery2.Eof and (RowIndex < StartIndex) do
  begin
    Form8.ADOQuery2.Next;
    Inc(RowIndex);
  end;

  // Добавляем ответы в RadioButton внутри GroupBox
  for i := 0 to GroupBox.ControlCount - 1 do
  begin
    if (GroupBox.Controls[i] is TRadioButton) and (not Form8.ADOQuery2.Eof) then
    begin
      RadioButton := TRadioButton(GroupBox.Controls[i]);
      RadioButton.Caption := Form8.ADOQuery2.FieldByName('answer text').AsString;
      RadioButton.Tag := Ord(Form8.ADOQuery2.FieldByName('correct answer').AsBoolean);
      Form8.ADOQuery2.Next;
      if RowIndex >= StartIndex + Count then
        Break; // Если загрузили нужное количество ответов, выходим из цикла
    end;
  end;
end;






procedure LoadQuestionsZad3; //процедура для загрузки и вывода вопросов 3-го задания
begin
  Form8.ADOQuery3.Close;
  Form8.ADOQuery3.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form8.ADOQuery3.Open;

  // Загружаем вопросы в Label
  if not Form8.ADOQuery3.IsEmpty then
  begin
    Form8.Label8.Caption :='39. ' + Form8.ADOQuery3.Fields[0].AsString; // Первая строка
    Form8.ADOQuery3.Next;
    if not Form8.ADOQuery3.IsEmpty then
    begin
      Form8.Label9.Caption :='40. ' + Form8.ADOQuery3.Fields[0].AsString; // Вторая строка
      Form8.ADOQuery3.Next;
      if not Form8.ADOQuery3.IsEmpty then
      begin
        Form8.Label21.Caption :='41. ' + Form8.ADOQuery3.Fields[0].AsString; // Третья строка
        Form8.ADOQuery3.Next;
        if not Form8.ADOQuery3.IsEmpty then
          Form8.Label23.Caption :='42. ' + Form8.ADOQuery3.Fields[0].AsString; // Четвертая строка
      end;
    end;
  end;
end;

procedure CheckAllAnswersZad3(Edit: TEdit; AnswerIndex: Integer); //проверка правильности ответов 3-го задания
var
  TextFromDatabase: string;
begin
    // Закрываем ADOQuery3, если он был открыт
    Form8.ADOQuery3.Close;
    // Устанавливаем текст SQL запроса для получения текста ответа из базы данных по индексу
    Form8.ADOQuery3.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // Устанавливаем значение параметра :answer_index для запроса
    Form8.ADOQuery3.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // Открываем ADOQuery3 для выполнения запроса
    Form8.ADOQuery3.Open;
    if not Form8.ADOQuery3.IsEmpty then
      TextFromDatabase := Form8.ADOQuery3.FieldByName('answer text').AsString;
    Form8.ADOQuery3.Close;

  // Сравниваем текст из базы данных с текстом в Edit
 if (TextFromDatabase <> '') and (TextFromDatabase <> ' ') then
  begin
   if Edit.Text = TextFromDatabase then
   begin
    Inc(Ball, 2);
    Inc(right);
   end
   else
   begin
    Inc(incorrect);
   end;
  end
end;

procedure TForm8.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = '39.' then
    Edit1.Text := ''; // Удаляем стандартный текст при входе в поле Edit
    Edit1.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = ' ') then
  begin
    Edit1.Text := '39.';    // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit1.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm8.Edit2Enter(Sender: TObject);
begin
   if Edit2.Text = '40.' then
    Edit2.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit2.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit2Exit(Sender: TObject);
begin
   if (Edit2.Text = '') or (Edit2.Text = ' ') then
  begin
    Edit2.Text := '40.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit2.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm8.Edit6Enter(Sender: TObject);
begin
    if Edit6.Text = '41.' then
    Edit6.Text := ''; // Удаляем стандартный текст при входе в поле Edit
    Edit6.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit6Exit(Sender: TObject);
begin
   if (Edit6.Text = '') or (Edit6.Text = ' ') then
  begin
    Edit6.Text := '41.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit6.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm8.Edit9Enter(Sender: TObject);
begin
    if Edit9.Text = '42.' then
    Edit9.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit9.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit9Exit(Sender: TObject);
begin
   if (Edit9.Text = '') or (Edit9.Text = ' ') then
  begin
    Edit9.Text := '42.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit9.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit9.Font.Color := clBlack;
end;




procedure LoadQuestionsZad4; //процедура для загрузки и вывода вопросов 4-го задания
begin
  Form8.ADOQuery4.Close;
  Form8.ADOQuery4.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form8.ADOQuery4.Open;

  // Загружаем вопросы в Label
  if not Form8.ADOQuery4.IsEmpty then
  begin
    Form8.Label12.Caption :='43. ' + Form8.ADOQuery4.Fields[0].AsString; // Первая строка
    Form8.ADOQuery4.Next;
    if not Form8.ADOQuery4.IsEmpty then
    begin
      Form8.Label13.Caption :='44. ' + Form8.ADOQuery4.Fields[0].AsString; // Вторая строка
      Form8.ADOQuery4.Next;
      if not Form8.ADOQuery4.IsEmpty then
      begin
        Form8.Label24.Caption :='45. ' + Form8.ADOQuery4.Fields[0].AsString; // Третья строка
        Form8.ADOQuery4.Next;
        if not Form8.ADOQuery4.IsEmpty then
          Form8.Label25.Caption :='46. ' + Form8.ADOQuery4.Fields[0].AsString; // Четвертая строка
      end;
    end;
  end;
end;

procedure CheckAllAnswersZad4(Edit: TEdit; AnswerIndex: Integer); //проверка правильности ответов 4-го задания
var
  TextFromDatabase: string;
begin
    // Закрываем ADOQuery3, если он был открыт
    Form8.ADOQuery4.Close;
    // Устанавливаем текст SQL запроса для получения текста ответа из базы данных по индексу
    Form8.ADOQuery4.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // Устанавливаем значение параметра :answer_index для запроса
    Form8.ADOQuery4.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // Открываем ADOQuery3 для выполнения запроса
    Form8.ADOQuery4.Open;
    if not Form8.ADOQuery4.IsEmpty then
      TextFromDatabase := Form8.ADOQuery4.FieldByName('answer text').AsString;
    Form8.ADOQuery4.Close;

  // Сравниваем текст из базы данных с текстом в Edit
if (TextFromDatabase <> '') and (TextFromDatabase <> ' ') then
 begin
  if Edit.Text = TextFromDatabase then
  begin
    Inc(Ball, 2);
    Inc(right);
  end
  else
  begin
    Inc(incorrect);
  end;
 end
end;

procedure TForm8.Edit3Enter(Sender: TObject);
begin
  if Edit3.Text = '43.' then
    Edit3.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit3.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit3Exit(Sender: TObject);
begin
  if (Edit3.Text = '') or (Edit3.Text = ' ') then
  begin
    Edit3.Text := '43.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit3.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm8.Edit4Enter(Sender: TObject);
begin
   if Edit4.Text = '44.' then
    Edit4.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit4.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit4Exit(Sender: TObject);
begin
  if (Edit4.Text = '') or (Edit4.Text = ' ') then
  begin
    Edit4.Text := '44.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit4.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm8.Edit10Enter(Sender: TObject);
begin
   if Edit10.Text = '45.' then
    Edit10.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit10.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit10Exit(Sender: TObject);
begin
  if (Edit10.Text = '') or (Edit10.Text = ' ') then
  begin
    Edit10.Text := '45.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit10.Font.Color := clGray;    //    задаём цвет текста серый
    end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm8.Edit11Enter(Sender: TObject);
begin
   if Edit11.Text = '46.' then
    Edit11.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit11.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm8.Edit11Exit(Sender: TObject);
begin
  if (Edit11.Text = '') or (Edit11.Text = ' ') then
  begin
    Edit11.Text := '46.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit11.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;






procedure LoadQuestionsZad5; //процедура для загрузки и вывода вопросов 5-го задания
begin
  Form8.ADOQuery5.Close;
  Form8.ADOQuery5.SQL.Text := 'SELECT TOP 1 [question text] FROM questions';
  Form8.ADOQuery5.Open;

  // Загружаем вопросы в Label
  if not Form8.ADOQuery5.IsEmpty then
    Form8.Label16.Caption := Form8.ADOQuery5.Fields[0].AsString; // Первая строка
end;

procedure CheckAllAnswersZad5(Edit: TEdit; AnswerIndex: Integer); //проверка правильности ответов 5-го задания
var
  TextFromDatabase: string;
begin
    // Закрываем ADOQuery3, если он был открыт
    Form8.ADOQuery5.Close;
    // Устанавливаем текст SQL запроса для получения текста ответа из базы данных по индексу
    Form8.ADOQuery5.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // Устанавливаем значение параметра :answer_index для запроса
    Form8.ADOQuery5.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // Открываем ADOQuery3 для выполнения запроса
    Form8.ADOQuery5.Open;
    if not Form8.ADOQuery5.IsEmpty then
      TextFromDatabase := Form8.ADOQuery5.FieldByName('answer text').AsString;
    Form8.ADOQuery5.Close;

  // Сравниваем текст из базы данных с текстом в Edit
if (TextFromDatabase <> '') and (TextFromDatabase <> ' ') then
 begin
  if Edit.Text = TextFromDatabase then
  begin
    Inc(Ball, 2);
    Inc(right);
  end
  else
  begin
    Inc(incorrect);
  end;
 end
end;




procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Form1.Visible:=true;
end;


procedure TForm8.FormCreate(Sender: TObject);
begin
  LoadRandomQuestionsZad1;

  LoadQuestionsZad2;
  LoadAnswersToGroupBox(GroupBox1, 0, 4);
  LoadAnswersToGroupBox(GroupBox2, 4, 4);
  LoadAnswersToGroupBox(GroupBox3, 8, 4);

  LoadQuestionsZad3;

  LoadQuestionsZad4;

  LoadQuestionsZad5;
end;

procedure TForm8.Button1Click(Sender: TObject);
var i:integer;  RadioButton: TRadioButton;
begin
//проверка правильности ответа 1-го задания
  CheckCorrectAnswer(radiogroup1);CheckCorrectAnswer(radiogroup2);
  CheckCorrectAnswer(radiogroup3);CheckCorrectAnswer(radiogroup4);
  CheckCorrectAnswer(radiogroup5);CheckCorrectAnswer(radiogroup6);
  CheckCorrectAnswer(radiogroup7);CheckCorrectAnswer(radiogroup8);
  CheckCorrectAnswer(radiogroup9);CheckCorrectAnswer(radiogroup10);
  CheckCorrectAnswer(radiogroup11);CheckCorrectAnswer(radiogroup12);
  CheckCorrectAnswer(radiogroup13);CheckCorrectAnswer(radiogroup14);
  CheckCorrectAnswer(radiogroup15);CheckCorrectAnswer(radiogroup16);
  CheckCorrectAnswer(radiogroup17);CheckCorrectAnswer(radiogroup18);
  CheckCorrectAnswer(radiogroup20);CheckCorrectAnswer(radiogroup21);
  CheckCorrectAnswer(radiogroup22);CheckCorrectAnswer(radiogroup23);
  CheckCorrectAnswer(radiogroup24);CheckCorrectAnswer(radiogroup25);
  CheckCorrectAnswer(radiogroup26);CheckCorrectAnswer(radiogroup27);
  CheckCorrectAnswer(radiogroup28);CheckCorrectAnswer(radiogroup29);
  CheckCorrectAnswer(radiogroup30);CheckCorrectAnswer(radiogroup31);
  CheckCorrectAnswer(radiogroup32);CheckCorrectAnswer(radiogroup33);
  CheckCorrectAnswer(radiogroup34);CheckCorrectAnswer(radiogroup35);
  CheckCorrectAnswer(radiogroup19);

    //проверка 2-го задания
  // Проходим по всем RadioButton внутри GroupBox
for i := 0 to GroupBox1.ControlCount - 1 do
 begin
  if GroupBox1.Controls[i] is TRadioButton then
  begin
    RadioButton := TRadioButton(GroupBox1.Controls[i]);
    // Проверяем выбран ли RadioButton и является ли он правильным ответом
    if RadioButton.Checked then
    begin
      if RadioButton.Tag = 1 then
      begin
        Inc(Ball, 2); // Если выбран правильный ответ, увеличиваем балл на 2
        Inc(right); // Увеличиваем счетчик правильных ответов
      end
      else
      begin
        Inc(incorrect); // Увеличиваем счетчик неправильных ответов
      end;
    end;
  end;
 end;


for i := 0 to GroupBox2.ControlCount - 1 do
 begin
  if GroupBox2.Controls[i] is TRadioButton then
  begin
    RadioButton := TRadioButton(GroupBox2.Controls[i]);
    // Проверяем выбран ли RadioButton и является ли он правильным ответом
    if RadioButton.Checked then
    begin
      if RadioButton.Tag = 1 then
      begin
        Inc(Ball, 2); // Если выбран правильный ответ, увеличиваем балл на 2
        Inc(right); // Увеличиваем счетчик правильных ответов
      end
      else
      begin
        Inc(incorrect); // Увеличиваем счетчик неправильных ответов
      end;
    end;
  end;
 end;

 for i := 0 to GroupBox3.ControlCount - 1 do
 begin
  if GroupBox3.Controls[i] is TRadioButton then
  begin
    RadioButton := TRadioButton(GroupBox3.Controls[i]);
    // Проверяем выбран ли RadioButton и является ли он правильным ответом
    if RadioButton.Checked then
    begin
      if RadioButton.Tag = 1 then
      begin
        Inc(Ball, 2); // Если выбран правильный ответ, увеличиваем балл на 2
        Inc(right); // Увеличиваем счетчик правильных ответов
      end
      else
      begin
        Inc(incorrect); // Увеличиваем счетчик неправильных ответов
      end;
    end;
  end;
 end;

 //проверка правильности ответов 3-го задания
CheckAllAnswersZad3(edit1,1);
CheckAllAnswersZad3(edit2,2);
CheckAllAnswersZad3(edit6,3);
CheckAllAnswersZad3(edit9,4);

//проверка правильности ответов 4-го задания
CheckAllAnswersZad4(edit3,1);
CheckAllAnswersZad4(edit4,2);
CheckAllAnswersZad4(edit10,3);
CheckAllAnswersZad4(edit11,4);

//проверка правильности ответов 5-го задания
CheckAllAnswersZad5(edit5,1);
CheckAllAnswersZad5(edit7,2);
CheckAllAnswersZad5(edit8,3);
CheckAllAnswersZad5(edit12,4);



  showmessage(inttostr(ball));
end;

end.
