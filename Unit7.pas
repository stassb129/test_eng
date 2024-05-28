unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Math, System.Variants, System.Generics.Collections, System.Contnrs, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage, Vcl.MPlayer,
  Vcl.Buttons;

type
  TForm7 = class(TForm)
    ScrollBox1: TScrollBox;
    Shape1: TShape;
    Shape2: TShape;
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
    RadioGroup36: TRadioGroup;
    Shape3: TShape;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Shape4: TShape;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label21: TLabel;
    Edit6: TEdit;
    Label23: TLabel;
    Edit9: TEdit;
    Shape5: TShape;
    Label12: TLabel;
    Edit3: TEdit;
    Label13: TLabel;
    Edit4: TEdit;
    Label24: TLabel;
    Edit10: TEdit;
    Label25: TLabel;
    Edit11: TEdit;
    Shape6: TShape;
    Label16: TLabel;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit12: TEdit;
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
    Label20: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Image1: TImage;
    Shape9: TShape;
    Shape7: TShape;
    Shape8: TShape;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    ADOConnection3: TADOConnection;
    ADOQuery3: TADOQuery;
    ADOConnection4: TADOConnection;
    ADOQuery4: TADOQuery;
    ADOConnection5: TADOConnection;
    ADOQuery5: TADOQuery;
    ADOConnection6: TADOConnection;
    ADOQuery6: TADOQuery;
    Label33: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label28: TLabel;
    MediaPlayer1: TMediaPlayer;
    Label30: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure RadioGroup6Click(Sender: TObject);
    procedure RadioGroup7Click(Sender: TObject);
    procedure RadioGroup8Click(Sender: TObject);
    procedure RadioGroup9Click(Sender: TObject);
    procedure RadioGroup10Click(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure RadioGroup12Click(Sender: TObject);
    procedure RadioGroup13Click(Sender: TObject);
    procedure RadioGroup14Click(Sender: TObject);
    procedure RadioGroup15Click(Sender: TObject);
    procedure RadioGroup16Click(Sender: TObject);
    procedure RadioGroup17Click(Sender: TObject);
    procedure RadioGroup18Click(Sender: TObject);
    procedure RadioGroup19Click(Sender: TObject);
    procedure RadioGroup20Click(Sender: TObject);
    procedure RadioGroup21Click(Sender: TObject);
    procedure RadioGroup22Click(Sender: TObject);
    procedure RadioGroup23Click(Sender: TObject);
    procedure RadioGroup24Click(Sender: TObject);
    procedure RadioGroup25Click(Sender: TObject);
    procedure RadioGroup26Click(Sender: TObject);
    procedure RadioGroup27Click(Sender: TObject);
    procedure RadioGroup28Click(Sender: TObject);
    procedure RadioGroup29Click(Sender: TObject);
    procedure RadioGroup30Click(Sender: TObject);
    procedure RadioGroup31Click(Sender: TObject);
    procedure RadioGroup32Click(Sender: TObject);
    procedure RadioGroup33Click(Sender: TObject);
    procedure RadioGroup34Click(Sender: TObject);
    procedure RadioGroup35Click(Sender: TObject);
    procedure RadioGroup36Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit10KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit11KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit12KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  ball: Integer = 0;
  right:integer = 0;//правильные ответы
  incorrect : integer = 0; //неправильные ответы
  schetchik: integer = 0;
   isFirstClick1: Boolean = true;  isFirstClick2: Boolean = true;
   isFirstClick3: Boolean = true;  isFirstClick4: Boolean = true;
   isFirstClick5: Boolean = true;  isFirstClick6: Boolean = true;// флаг показывает был ли уже сделан клик на RadioGroup,
   isFirstClick7: Boolean = true;  isFirstClick8: Boolean = true;
   isFirstClick9: Boolean = true;  isFirstClick10: Boolean = true;
   isFirstClick11: Boolean = true;  isFirstClick12: Boolean = true;
   isFirstClick13: Boolean = true;  isFirstClick14: Boolean = true;
   isFirstClick15: Boolean = true;  isFirstClick16: Boolean = true;
   isFirstClick17: Boolean = true;  isFirstClick18: Boolean = true;
   isFirstClick19: Boolean = true;  isFirstClick20: Boolean = true;
   isFirstClick21: Boolean = true;  isFirstClick22: Boolean = true;
   isFirstClick23: Boolean = true;  isFirstClick24: Boolean = true;
   isFirstClick25: Boolean = true;  isFirstClick26: Boolean = true;
   isFirstClick27: Boolean = true;  isFirstClick28: Boolean = true;
   isFirstClick29: Boolean = true;  isFirstClick30: Boolean = true;
   isFirstClick31: Boolean = true;  isFirstClick32: Boolean = true;
   isFirstClick33: Boolean = true;  isFirstClick34: Boolean = true;
   isFirstClick35: Boolean = true;  isFirstClick36: Boolean = true;
   isFirstClickzad2_1: Boolean = true;  isFirstClickzad2_2: Boolean = true;
   //для пройденого с edit
   prevText1:string; prevText2:string; prevText3:string; prevText4:string;//prevText, чтобы можно было сравнить его с новым текстом при следующем вызове процедуры.
   prevText5:string; prevText6:string; prevText7:string; prevText8:string;
   prevText9:string; prevText10:string; prevText11:string; prevText12:string;
   //для музыки
   MusicPlaying: Boolean;
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

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
MessageBox(Handle, 'Примечание: В случае возврата на главную форму прогресс будет сохранен.', 'Тест 2', 0);
   Form1.Visible:= True;
   Form7.Visible:= False;
        if (Form7.Visible = False) then
       MediaPlayer1.Stop;
end;


procedure LoadAnswersForQuestion(QuestionID: Integer; RadioGroup: TRadioGroup);//процедура для вывода ответов 1-го задания
begin
//   Очищаем Items перед загрузкой новых ответов
  RadioGroup.Items.Clear;

//   Выполняем SQL-запрос для выбора ответов к вопросу с заданным ID
  Form7.ADOQuery1.Close;
  Form7.ADOQuery1.SQL.Text := 'SELECT [answer text] FROM answers WHERE [answer ID] = :QuestionID';
  Form7.ADOQuery1.Parameters.ParamByName('QuestionID').Value := QuestionID;
  Form7.ADOQuery1.Open;

  // Добавляем ответы в Items RadioGroup и возвращаем правильный ответ
  Form7.ADOQuery1.First;
  while not Form7.ADOQuery1.Eof do
  begin
    RadioGroup.Items.Add(Form7.ADOQuery1.FieldByName('answer text').AsString);

    Form7.ADOQuery1.Next;
  end;
end;

procedure LoadRandomQuestionsZad1;// вывод вопросов и ответов 1-го задания
var
  i, QuestionNumber: Integer;
  Questions: TObjectList<TQuestion>;
  RandomIndex: Integer;
begin
  Form7.ADOQuery1.Close;
  Form7.ADOQuery1.SQL.Text := 'SELECT TOP 36 * FROM questions';
  Form7.ADOQuery1.Open;

  // Создаем список вопросов
  Questions := TObjectList<TQuestion>.Create;
  try
    Form7.ADOQuery1.First;
    while not Form7.ADOQuery1.Eof do
    begin
      Questions.Add(TQuestion.Create(Form7.ADOQuery1.FieldByName('question text').AsString,
                    Form7.ADOQuery1.FieldByName('code').AsInteger));
      Form7.ADOQuery1.Next;
    end;

    QuestionNumber := 1; // Начальное значение порядкового номера вопроса

    // Выводим вопросы рандомно в каждый RadioGroup
    for i := 0 to Min(Questions.Count - 1, 35) do
    begin
      RandomIndex := Random(Questions.Count); // Генерируем случайный индекс
      case i of
      0: begin
               Form7.RadioGroup1.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup1);
         end;
      1: begin
               Form7.RadioGroup2.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup2);
         end;
      2: begin
               Form7.RadioGroup3.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup3);
         end;
      3: begin
               Form7.RadioGroup4.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup4);
         end;
      4: begin
               Form7.RadioGroup5.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup5);
         end;
      5: begin
               Form7.RadioGroup6.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup6);
         end;
      6: begin
               Form7.RadioGroup7.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup7);
         end;
      7: begin
               Form7.RadioGroup8.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup8);
         end;
      8: begin
               Form7.RadioGroup9.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup9);
         end;
      9: begin
               Form7.RadioGroup10.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup10);
         end;
      10: begin
               Form7.RadioGroup11.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup11);
         end;
      11: begin
               Form7.RadioGroup12.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup12);
         end;
      12: begin
               Form7.RadioGroup13.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup13);
         end;
      13: begin
               Form7.RadioGroup14.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup14);
         end;
      14: begin
               Form7.RadioGroup15.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup15);
         end;
      15: begin
               Form7.RadioGroup16.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup16);
         end;
      16: begin
               Form7.RadioGroup17.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup17);
         end;
      17: begin
               Form7.RadioGroup18.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup18);
         end;
      18: begin
               Form7.RadioGroup19.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup19);
         end;
      19: begin
               Form7.RadioGroup20.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup20);
         end;
      20: begin
               Form7.RadioGroup21.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup21);
         end;
      21: begin
               Form7.RadioGroup22.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup22);
         end;
      22: begin
               Form7.RadioGroup23.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup23);
         end;
      23: begin
               Form7.RadioGroup24.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup24);
         end;
      24: begin
               Form7.RadioGroup25.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup25);
         end;
      25: begin
               Form7.RadioGroup26.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup26);
         end;
      26: begin
               Form7.RadioGroup27.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup27);
         end;
      27: begin
               Form7.RadioGroup28.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup28);
         end;
      28: begin
               Form7.RadioGroup29.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup29);
         end;
      29: begin
               Form7.RadioGroup30.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup30);
         end;
      30: begin
               Form7.RadioGroup31.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup31);
         end;
      31: begin
               Form7.RadioGroup32.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup32);
         end;
      32: begin
               Form7.RadioGroup33.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup33);
         end;
      33: begin
               Form7.RadioGroup34.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup34);
         end;
      34: begin
               Form7.RadioGroup35.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup35);
         end;
      35: begin
               Form7.RadioGroup36.Caption := IntToStr(QuestionNumber) + '. ' + Questions[RandomIndex].Text;
               LoadAnswersForQuestion(Questions[RandomIndex].ID, Form7.RadioGroup36);
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
    Form7.ADOQuery1.Close;
    Form7.ADOQuery1.SQL.Text := 'SELECT [correct answer] FROM answers WHERE [answer text] = :SelectedAnswer';
    Form7.ADOQuery1.Parameters.ParamByName('SelectedAnswer').Value := SelectedAnswer;
    Form7.ADOQuery1.Open;

    // Проверяем правильность ответа
    if not Form7.ADOQuery1.IsEmpty then
    begin
      CorrectAnswer := Form7.ADOQuery1.FieldByName('correct answer').AsString;
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
  Form7.ADOQuery2.Close;
  Form7.ADOQuery2.SQL.Text := 'SELECT TOP 2 [question text] FROM questions';
  Form7.ADOQuery2.Open;

  // Загружаем вопросы в groupbox
  if not Form7.ADOQuery2.IsEmpty then
  begin
    Form7.Label20.Caption :='37. ' + Form7.ADOQuery2.Fields[0].AsString;
    Form7.ADOQuery2.Next;
    if not Form7.ADOQuery2.IsEmpty then
      Form7.Label22.caption :='38. ' + Form7.ADOQuery2.Fields[0].AsString;
  end;
end;
//процедура для вывода ответов 2-го задания
procedure LoadAnswersToGroupBox(GroupBox: TGroupBox; StartIndex, Count: Integer);
var
  i, RowIndex: Integer;
  RadioButton: TRadioButton;
begin

  // Выполняем SQL-запрос для выбора всех строк из столбца "answers text" и "correct answer"
  Form7.ADOQuery2.Close;
  Form7.ADOQuery2.SQL.Text := 'SELECT [answer text], [correct answer] FROM answers';
  Form7.ADOQuery2.Open;

  // Перемещаем указатель на нужное место в результате запроса
  RowIndex := 0;
  while not Form7.ADOQuery2.Eof and (RowIndex < StartIndex) do
  begin
    Form7.ADOQuery2.Next;
    Inc(RowIndex);
  end;

  // Добавляем ответы в RadioButton внутри GroupBox
  for i := 0 to GroupBox.ControlCount - 1 do
  begin
    if (GroupBox.Controls[i] is TRadioButton) and (not Form7.ADOQuery2.Eof) then
    begin
      RadioButton := TRadioButton(GroupBox.Controls[i]);
      RadioButton.Caption := Form7.ADOQuery2.FieldByName('answer text').AsString;
      RadioButton.Tag := Ord(Form7.ADOQuery2.FieldByName('correct answer').AsBoolean);
      Form7.ADOQuery2.Next;
      if RowIndex >= StartIndex + Count then
        Break; // Если загрузили нужное количество ответов, выходим из цикла
    end;
  end;
end;






procedure LoadQuestionsZad3; //процедура для загрузки и вывода вопросов 3-го задания
begin
  Form7.ADOQuery3.Close;
  Form7.ADOQuery3.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form7.ADOQuery3.Open;

  // Загружаем вопросы в Label
  if not Form7.ADOQuery3.IsEmpty then
  begin
    Form7.Label8.Caption :='39. ' + Form7.ADOQuery3.Fields[0].AsString; // Первая строка
    Form7.ADOQuery3.Next;
    if not Form7.ADOQuery3.IsEmpty then
    begin
      Form7.Label9.Caption :='40. ' + Form7.ADOQuery3.Fields[0].AsString; // Вторая строка
      Form7.ADOQuery3.Next;
      if not Form7.ADOQuery3.IsEmpty then
      begin
        Form7.Label21.Caption :='41. ' + Form7.ADOQuery3.Fields[0].AsString; // Третья строка
        Form7.ADOQuery3.Next;
        if not Form7.ADOQuery3.IsEmpty then
          Form7.Label23.Caption :='42. ' + Form7.ADOQuery3.Fields[0].AsString; // Четвертая строка
      end;
    end;
  end;
end;

procedure CheckAllAnswersZad3(Edit: TEdit; AnswerIndex: Integer); //проверка правильности ответов 3-го задания
var
  TextFromDatabase: string;
  UserText: string;
begin
    // Закрываем ADOQuery3, если он был открыт
    Form7.ADOQuery3.Close;
    // Устанавливаем текст SQL запроса для получения текста ответа из базы данных по индексу
    Form7.ADOQuery3.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // Устанавливаем значение параметра :answer_index для запроса
    Form7.ADOQuery3.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // Открываем ADOQuery3 для выполнения запроса
    Form7.ADOQuery3.Open;
    if not Form7.ADOQuery3.IsEmpty then
      TextFromDatabase := Form7.ADOQuery3.FieldByName('answer text').AsString;
    Form7.ADOQuery3.Close;

    UserText := Trim(Edit.Text);
  // Сравниваем текст из базы данных с текстом в Edit
if (TextFromDatabase <> '') and (TextFromDatabase <> ' ') then
 begin
  if UserText = TextFromDatabase then
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

procedure TForm7.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = '39.' then
    Edit1.Text := ''; // Удаляем стандартный текст при входе в поле Edit
    Edit1.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = ' ') then
  begin
    Edit1.Text := '39.';    // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit1.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit2Enter(Sender: TObject);
begin
   if Edit2.Text = '40.' then
    Edit2.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit2.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit2Exit(Sender: TObject);
begin
   if (Edit2.Text = '') or (Edit2.Text = ' ') then
  begin
    Edit2.Text := '40.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit2.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit6Enter(Sender: TObject);
begin
    if Edit6.Text = '41.' then
    Edit6.Text := ''; // Удаляем стандартный текст при входе в поле Edit
    Edit6.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit6Exit(Sender: TObject);
begin
   if (Edit6.Text = '') or (Edit6.Text = ' ') then
  begin
    Edit6.Text := '41.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit6.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit9Enter(Sender: TObject);
begin
    if Edit9.Text = '42.' then
    Edit9.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit9.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit9Exit(Sender: TObject);
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
  Form7.ADOQuery4.Close;
  Form7.ADOQuery4.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form7.ADOQuery4.Open;

  // Загружаем вопросы в Label
  if not Form7.ADOQuery4.IsEmpty then
  begin
    Form7.Label12.Caption :='43. ' + Form7.ADOQuery4.Fields[0].AsString; // Первая строка
    Form7.ADOQuery4.Next;
    if not Form7.ADOQuery4.IsEmpty then
    begin
      Form7.Label13.Caption :='44. ' + Form7.ADOQuery4.Fields[0].AsString; // Вторая строка
      Form7.ADOQuery4.Next;
      if not Form7.ADOQuery4.IsEmpty then
      begin
        Form7.Label24.Caption :='45. ' + Form7.ADOQuery4.Fields[0].AsString; // Третья строка
        Form7.ADOQuery4.Next;
        if not Form7.ADOQuery4.IsEmpty then
          Form7.Label25.Caption :='46. ' + Form7.ADOQuery4.Fields[0].AsString; // Четвертая строка
      end;
    end;
  end;
end;

procedure CheckAllAnswersZad4(Edit: TEdit; AnswerIndex: Integer); //проверка правильности ответов 4-го задания
var
  TextFromDatabase: string;
  UserText: string;
begin
    // Закрываем ADOQuery3, если он был открыт
    Form7.ADOQuery4.Close;
    // Устанавливаем текст SQL запроса для получения текста ответа из базы данных по индексу
    Form7.ADOQuery4.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // Устанавливаем значение параметра :answer_index для запроса
    Form7.ADOQuery4.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // Открываем ADOQuery3 для выполнения запроса
    Form7.ADOQuery4.Open;
    if not Form7.ADOQuery4.IsEmpty then
      TextFromDatabase := Form7.ADOQuery4.FieldByName('answer text').AsString;
    Form7.ADOQuery4.Close;

    UserText := Trim(Edit.Text);
  // Сравниваем текст из базы данных с текстом в Edit
if (TextFromDatabase <> '') and (TextFromDatabase <> ' ') then
 begin
  if UserText = TextFromDatabase then
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


procedure TForm7.Edit3Enter(Sender: TObject);
begin
  if Edit3.Text = '43.' then
    Edit3.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit3.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit3Exit(Sender: TObject);
begin
  if (Edit3.Text = '') or (Edit3.Text = ' ') then
  begin
    Edit3.Text := '43.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit3.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit4Enter(Sender: TObject);
begin
   if Edit4.Text = '44.' then
    Edit4.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit4.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit4Exit(Sender: TObject);
begin
  if (Edit4.Text = '') or (Edit4.Text = ' ') then
  begin
    Edit4.Text := '44.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit4.Font.Color := clGray;    //    задаём цвет текста серый
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit10Enter(Sender: TObject);
begin
   if Edit10.Text = '45.' then
    Edit10.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit10.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit10Exit(Sender: TObject);
begin
  if (Edit10.Text = '') or (Edit10.Text = ' ') then
  begin
    Edit10.Text := '45.';     // Восстанавливаем стандартный текст при выходе из поля Edit
    Edit10.Font.Color := clGray;    //    задаём цвет текста серый
    end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit11Enter(Sender: TObject);
begin
   if Edit11.Text = '46.' then
    Edit11.Text := '';  // Удаляем стандартный текст при входе в поле Edit
    Edit11.Font.Color := clBlack;//    задаём цвет текста черный
end;

procedure TForm7.Edit11Exit(Sender: TObject);
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
  Form7.ADOQuery5.Close;
  Form7.ADOQuery5.SQL.Text := 'SELECT TOP 1 [question text] FROM questions';
  Form7.ADOQuery5.Open;

  // Загружаем вопросы в Label
  if not Form7.ADOQuery5.IsEmpty then
    Form7.Label16.Caption := Form7.ADOQuery5.Fields[0].AsString; // Первая строка
end;

procedure CheckAllAnswersZad5(Edit: TEdit; AnswerIndex: Integer); //проверка правильности ответов 5-го задания
var
  TextFromDatabase: string;
  UserText: string;
begin
    // Закрываем ADOQuery3, если он был открыт
    Form7.ADOQuery5.Close;
    // Устанавливаем текст SQL запроса для получения текста ответа из базы данных по индексу
    Form7.ADOQuery5.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // Устанавливаем значение параметра :answer_index для запроса
    Form7.ADOQuery5.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // Открываем ADOQuery3 для выполнения запроса
    Form7.ADOQuery5.Open;
    if not Form7.ADOQuery5.IsEmpty then
      TextFromDatabase := Form7.ADOQuery5.FieldByName('answer text').AsString;
    Form7.ADOQuery5.Close;

      UserText := Trim(Edit.Text);
  // Сравниваем текст из базы данных с текстом в Edit
if (TextFromDatabase <> '') and (TextFromDatabase <> ' ') then
 begin
  if UserText = TextFromDatabase then
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



 //проверка была ли закончена музыка если да то начинаем сначала
procedure TForm7.MediaPlayer1Notify(Sender: TObject);
begin
  if Form7.MediaPlayer1.NotifyValue = nvSuccessful then
  begin
    // Музыка завершилась успешно, начинаем сначала
    Form7.MediaPlayer1.Play;
  end;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Form7.MediaPlayer1.stop;
   Form1.Visible:=true;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  LoadRandomQuestionsZad1;

  LoadQuestionsZad2;
  LoadAnswersToGroupBox(GroupBox1, 0, 4);
  LoadAnswersToGroupBox(GroupBox2, 4, 4);

  LoadQuestionsZad3;

  LoadQuestionsZad4;

  LoadQuestionsZad5;

    //для проигрывания музыки постоянно
    MediaPlayer1.Notify := True;
  MediaPlayer1.OnNotify := MediaPlayer1Notify;
end;

 //процедура, которая следит за состоянием кнопки
procedure CheckButtonState;
begin
  if Form7.Label28.Caption <> '50' then
    Form7.Button1.Enabled := False
  else
    Form7.Button1.Enabled := True;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
Form7.Image1.Picture.LoadFromFile('C:\Users\XE\Desktop\test_eng\изобр\Ф3Тест1\1звук.png');

CheckButtonState;//для кнопки результата

MusicPlaying:=true;
MediaPlayer1.Play;//плей музыка

ScrollBox1.SetFocus;//фокусировка чтобы было сначала
end;

procedure TForm7.Image1Click(Sender: TObject);
begin
 if MusicPlaying then
  begin
    MediaPlayer1.Stop;
    Form7.Image1.Picture.LoadFromFile('C:\Users\XE\Desktop\test_eng\изобр\Ф3Тест1\нет звука.png');
  end
  else
  begin
    MediaPlayer1.Play;
    Form7.Image1.Picture.LoadFromFile('C:\Users\XE\Desktop\test_eng\изобр\Ф3Тест1\1звук.png');
  end;
  MusicPlaying := not MusicPlaying; // Инвертируем состояние
end;


procedure TForm7.Button1Click(Sender: TObject);
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
  CheckCorrectAnswer(radiogroup36);CheckCorrectAnswer(radiogroup19);

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

//вывод баллов
  Form7.Label32.Caption:= inttostr(Ball)+'/100';
  Form7.Label33.Caption:= inttostr(right);
  Form7.Label34.Caption:= inttostr(incorrect);

  Form7.Button1.visible := False;//неактивной после вывода результата

  if (ball >= 0) then   //передаём рез пользователя в бд
  begin
    // Подготавливаем SQL-запрос для обновления данных в таблице
    ADOQuery6.SQL.Text := 'UPDATE регистрация SET Test2 = :Test2 WHERE id = :ID';

    // Задаем значение параметра Test1
    ADOQuery6.Parameters.ParamByName('Test2').Value := Form7.Label32.Caption;

    // Предполагаем, что у пользователя есть уникальный ID, и передаем его в параметры
    ADOQuery6.Parameters.ParamByName('ID').Value := UserID;

    // Выполняем SQL-запрос
    ADOQuery6.ExecSQL;
  end;
end;




//счетчик для пройденого
procedure TForm7.RadioGroup1Click(Sender: TObject);
begin
   // Проверяем, выбран ли какой-либо элемент в RadioGroup
  if RadioGroup1.ItemIndex <> -1 then
  begin
    if isFirstClick1 then
    begin
      Inc(schetchik);
      isFirstClick1 := False// Устанавливаем флаг в false, чтобы игнорировать дополнительные клики
    end;
  end;
  Label28.Caption := IntToStr(schetchik);
  CheckButtonState ;
end;

procedure TForm7.RadioGroup2Click(Sender: TObject);
begin
     // Проверяем, выбран ли какой-либо элемент в RadioGroup
  if RadioGroup2.ItemIndex <> -1 then
  begin
    if isFirstClick2 then
    begin
      Inc(schetchik);
      isFirstClick2 := False;
    end;
  end;
  Label28.Caption := IntToStr(schetchik);
  CheckButtonState;
end;

procedure TForm7.RadioGroup3Click(Sender: TObject);
begin
  if RadioGroup3.ItemIndex <> -1 then
  begin
    if isFirstClick3 then
    begin
      Inc(schetchik);
      isFirstClick3 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState;
end;

procedure TForm7.RadioGroup4Click(Sender: TObject);
begin
  if RadioGroup4.ItemIndex <> -1 then
  begin
    if isFirstClick4 then
    begin
      Inc(schetchik);
      isFirstClick4 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState  ;
end;

procedure TForm7.RadioGroup5Click(Sender: TObject);
begin
  if RadioGroup5.ItemIndex <> -1 then
  begin
    if isFirstClick5 then
    begin
      Inc(schetchik);
      isFirstClick5 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState  ;
end;

procedure TForm7.RadioGroup6Click(Sender: TObject);
begin
  if RadioGroup6.ItemIndex <> -1 then
  begin
    if isFirstClick6 then
    begin
      Inc(schetchik);
      isFirstClick6 := False;
      CheckButtonState;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup7Click(Sender: TObject);
begin
  if RadioGroup7.ItemIndex <> -1 then
  begin
    if isFirstClick7 then
    begin
      Inc(schetchik);
      isFirstClick7 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState;
end;

procedure TForm7.RadioGroup8Click(Sender: TObject);
begin
  if RadioGroup8.ItemIndex <> -1 then
  begin
    if isFirstClick8 then
    begin
      Inc(schetchik);
      isFirstClick8 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup9Click(Sender: TObject);
begin
  if RadioGroup9.ItemIndex <> -1 then
  begin
    if isFirstClick9 then
    begin
      Inc(schetchik);
      isFirstClick9 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup10Click(Sender: TObject);
begin
  if RadioGroup10.ItemIndex <> -1 then
  begin
    if isFirstClick10 then
    begin
      Inc(schetchik);
      isFirstClick10 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup11Click(Sender: TObject);
begin
  if RadioGroup11.ItemIndex <> -1 then
  begin
    if isFirstClick11 then
    begin
      Inc(schetchik);
      isFirstClick11 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup12Click(Sender: TObject);
begin
    if RadioGroup12.ItemIndex <> -1 then
  begin
    if isFirstClick12 then
    begin
      Inc(schetchik);
      isFirstClick12 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup13Click(Sender: TObject);
begin
    if RadioGroup13.ItemIndex <> -1 then
  begin
    if isFirstClick13 then
    begin
      Inc(schetchik);
      isFirstClick13 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup14Click(Sender: TObject);
begin
    if RadioGroup14.ItemIndex <> -1 then
  begin
    if isFirstClick14 then
    begin
      Inc(schetchik);
      isFirstClick14 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup15Click(Sender: TObject);
begin
 if RadioGroup15.ItemIndex <> -1 then
  begin
    if isFirstClick15 then
    begin
      Inc(schetchik);
      isFirstClick15 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup16Click(Sender: TObject);
begin
 if RadioGroup16.ItemIndex <> -1 then
  begin
    if isFirstClick16 then
    begin
      Inc(schetchik);
      isFirstClick16 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup17Click(Sender: TObject);
begin
 if RadioGroup17.ItemIndex <> -1 then
  begin
    if isFirstClick17 then
    begin
      Inc(schetchik);
      isFirstClick17 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup18Click(Sender: TObject);
begin
 if RadioGroup18.ItemIndex <> -1 then
  begin
    if isFirstClick18 then
    begin
      Inc(schetchik);
      isFirstClick18 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup19Click(Sender: TObject);
begin
 if RadioGroup19.ItemIndex <> -1 then
  begin
    if isFirstClick19 then
    begin
      Inc(schetchik);
      isFirstClick19 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup20Click(Sender: TObject);
begin
 if RadioGroup20.ItemIndex <> -1 then
  begin
    if isFirstClick20 then
    begin
      Inc(schetchik);
      isFirstClick20 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup21Click(Sender: TObject);
begin
 if RadioGroup21.ItemIndex <> -1 then
  begin
    if isFirstClick21 then
    begin
      Inc(schetchik);
      isFirstClick21 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup22Click(Sender: TObject);
begin
 if RadioGroup22.ItemIndex <> -1 then
  begin
    if isFirstClick22 then
    begin
      Inc(schetchik);
      isFirstClick22 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup23Click(Sender: TObject);
begin
 if RadioGroup23.ItemIndex <> -1 then
  begin
    if isFirstClick23 then
    begin
      Inc(schetchik);
      isFirstClick23 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup24Click(Sender: TObject);
begin
 if RadioGroup24.ItemIndex <> -1 then
  begin
    if isFirstClick24 then
    begin
      Inc(schetchik);
      isFirstClick24 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup25Click(Sender: TObject);
begin
 if RadioGroup25.ItemIndex <> -1 then
  begin
    if isFirstClick25 then
    begin
      Inc(schetchik);
      isFirstClick25 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup26Click(Sender: TObject);
begin
 if RadioGroup26.ItemIndex <> -1 then
  begin
    if isFirstClick26 then
    begin
      Inc(schetchik);
      isFirstClick26 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup27Click(Sender: TObject);
begin
 if RadioGroup27.ItemIndex <> -1 then
  begin
    if isFirstClick27 then
    begin
      Inc(schetchik);
      isFirstClick27 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup28Click(Sender: TObject);
begin
 if RadioGroup28.ItemIndex <> -1 then
  begin
    if isFirstClick28 then
    begin
      Inc(schetchik);
      isFirstClick28 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup29Click(Sender: TObject);
begin
 if RadioGroup29.ItemIndex <> -1 then
  begin
    if isFirstClick29 then
    begin
      Inc(schetchik);
      isFirstClick29 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup30Click(Sender: TObject);
begin
  if RadioGroup30.ItemIndex <> -1 then
  begin
    if isFirstClick30 then
    begin
      Inc(schetchik);
      isFirstClick30 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup31Click(Sender: TObject);
begin
 if RadioGroup31.ItemIndex <> -1 then
  begin
    if isFirstClick31 then
    begin
      Inc(schetchik);
      isFirstClick31 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup32Click(Sender: TObject);
begin
 if RadioGroup32.ItemIndex <> -1 then
  begin
    if isFirstClick32 then
    begin
      Inc(schetchik);
      isFirstClick32 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup33Click(Sender: TObject);
begin
 if RadioGroup33.ItemIndex <> -1 then
  begin
    if isFirstClick33 then
    begin
      Inc(schetchik);
      isFirstClick33 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup34Click(Sender: TObject);
begin
 if RadioGroup34.ItemIndex <> -1 then
  begin
    if isFirstClick34 then
    begin
      Inc(schetchik);
      isFirstClick34 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup35Click(Sender: TObject);
begin
 if RadioGroup35.ItemIndex <> -1 then
  begin
    if isFirstClick35 then
    begin
      Inc(schetchik);
      isFirstClick35 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioGroup36Click(Sender: TObject);
begin
 if RadioGroup36.ItemIndex <> -1 then
  begin
    if isFirstClick36 then
    begin
      Inc(schetchik);
      isFirstClick36 := False;
    end;
  end;
    Label28.Caption := IntToStr(schetchik);
    CheckButtonState ;
end;

procedure TForm7.RadioButton1Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_1 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_1 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

procedure TForm7.RadioButton2Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_1 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_1 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
   CheckButtonState ;
end;

procedure TForm7.RadioButton3Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_1 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_1 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

procedure TForm7.RadioButton4Click(Sender: TObject);
begin
   // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_1 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_1 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

procedure TForm7.RadioButton5Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_2 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_2 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

procedure TForm7.RadioButton6Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_2 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_2 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

procedure TForm7.RadioButton7Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_2 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_2 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

procedure TForm7.RadioButton8Click(Sender: TObject);
begin
  // Проверяем, был ли уже сделан клик
  if isFirstClickzad2_2 then
  begin
    Inc(schetchik);
    Label28.Caption := IntToStr(schetchik);
    isFirstClickzad2_2 := False; // Устанавливаем флаг в False, чтобы игнорировать дополнительные клики
  end;
  CheckButtonState ;
end;

//для пройденого с edit
procedure TForm7.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText1 = '') or (prevText1 = '39.') or (prevText1 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit1.Text <> '') and (Edit1.Text <> '39.') and (Edit1.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit1.Text = '') or (Edit1.Text = '39.') or (Edit1.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText1 := Edit1.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText2 = '') or (prevText2 = '40.') or (prevText2 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit2.Text <> '') and (Edit2.Text <> '40.') and (Edit2.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit2.Text = '') or (Edit2.Text = '40.') or (Edit2.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText2 := Edit2.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText3 = '') or (prevText3 = '41.') or (prevText3 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit6.Text <> '') and (Edit6.Text <> '41.') and (Edit6.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit6.Text = '') or (Edit6.Text = '41.') or (Edit6.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText3 := Edit6.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit9KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText4 = '') or (prevText4 = '42.') or (prevText4 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit9.Text <> '') and (Edit9.Text <> '42.') and (Edit9.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit9.Text = '') or (Edit9.Text = '42.') or (Edit9.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText4 := Edit9.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText5 = '') or (prevText5 = '43.') or (prevText5 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit3.Text <> '') and (Edit3.Text <> '43.') and (Edit3.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit3.Text = '') or (Edit3.Text = '43.') or (Edit3.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText5 := Edit3.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText6 = '') or (prevText6 = '44.') or (prevText6 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit4.Text <> '') and (Edit4.Text <> '44.') and (Edit4.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit4.Text = '') or (Edit4.Text = '44.') or (Edit4.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText6 := Edit4.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit10KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText7 = '') or (prevText7 = '45.') or (prevText7 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit10.Text <> '') and (Edit10.Text <> '45.') and (Edit10.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit10.Text = '') or (Edit10.Text = '45.') or (Edit10.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText7 := Edit10.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit11KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText8 = '') or (prevText8 = '46.') or (prevText8 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit11.Text <> '') and (Edit11.Text <> '46.') and (Edit11.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit11.Text = '') or (Edit11.Text = '46.') or (Edit11.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText8 := Edit11.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText9 = '') or (prevText9 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit5.Text <> '') and (Edit5.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit5.Text = '') or (Edit5.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText9 := Edit5.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText10 = '') or (prevText10 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit7.Text <> '') and (Edit7.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit7.Text = '') or (Edit7.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText10 := Edit7.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit8KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText11 = '') or (prevText11 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit8.Text <> '') and (Edit8.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit8.Text = '') or (Edit8.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText11 := Edit8.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;

procedure TForm7.Edit12KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var    IsTextChanged: boolean;
begin
   IsTextChanged:= True;
  if IsTextChanged then
  begin
    // Проверяем, что предыдущий текст в Edit1 был пустым или содержал только '39.'
    if (prevText12 = '') or (prevText12 = ' ') then
    begin
      // Если новый текст не пустой и не равен '39.', увеличиваем счетчик
      if (Edit12.Text <> '') and (Edit12.Text <> ' ')  then
        Inc(schetchik);
    end
    else
    begin
      // Если предыдущий текст не был пустым и не равен '39.', а новый текст пустой или равен '39.', уменьшаем счетчик
      if (Edit12.Text = '') or (Edit12.Text = ' ') then
        Dec(schetchik);
    end;

    // Сохраняем текущий текст в Edit1 для сравнения на следующем изменении
    prevText12 := Edit12.Text;
    Label28.Caption := IntToStr(schetchik); // Отображаем текущее значение счетчика на метке
    CheckButtonState ;
  end;
end;


end.
