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
    Label29: TLabel;
    Label31: TLabel;
    Label30: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  ball: Integer = 0;
  right:integer = 0;//���������� ������
  incorrect : integer = 0; //������������ ������
  schetchik: integer = 0;
   isFirstClick1: Boolean = true;  isFirstClick2: Boolean = true;
   isFirstClick3: Boolean = true;  isFirstClick4: Boolean = true;
   isFirstClick5: Boolean = true;  isFirstClick6: Boolean = true;// ���� ���������� ��� �� ��� ������ ���� �� RadioGroup,
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

procedure LoadAnswersForQuestion(QuestionID: Integer; RadioGroup: TRadioGroup);//��������� ��� ������ ������� 1-�� �������
begin
//   ������� Items ����� ��������� ����� �������
  RadioGroup.Items.Clear;

//   ��������� SQL-������ ��� ������ ������� � ������� � �������� ID
  Form7.ADOQuery1.Close;
  Form7.ADOQuery1.SQL.Text := 'SELECT [answer text] FROM answers WHERE [answer ID] = :QuestionID';
  Form7.ADOQuery1.Parameters.ParamByName('QuestionID').Value := QuestionID;
  Form7.ADOQuery1.Open;

  // ��������� ������ � Items RadioGroup � ���������� ���������� �����
  Form7.ADOQuery1.First;
  while not Form7.ADOQuery1.Eof do
  begin
    RadioGroup.Items.Add(Form7.ADOQuery1.FieldByName('answer text').AsString);

    Form7.ADOQuery1.Next;
  end;
end;

procedure LoadRandomQuestionsZad1;// ����� �������� � ������� 1-�� �������
var
  i, QuestionNumber: Integer;
  Questions: TObjectList<TQuestion>;
  RandomIndex: Integer;
begin
  Form7.ADOQuery1.Close;
  Form7.ADOQuery1.SQL.Text := 'SELECT TOP 36 * FROM questions';
  Form7.ADOQuery1.Open;

  // ������� ������ ��������
  Questions := TObjectList<TQuestion>.Create;
  try
    Form7.ADOQuery1.First;
    while not Form7.ADOQuery1.Eof do
    begin
      Questions.Add(TQuestion.Create(Form7.ADOQuery1.FieldByName('question text').AsString,
                    Form7.ADOQuery1.FieldByName('code').AsInteger));
      Form7.ADOQuery1.Next;
    end;

    QuestionNumber := 1; // ��������� �������� ����������� ������ �������

    // ������� ������� �������� � ������ RadioGroup
    for i := 0 to Min(Questions.Count - 1, 35) do
    begin
      RandomIndex := Random(Questions.Count); // ���������� ��������� ������
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
      Inc(QuestionNumber); // ����������� ���������� ����� �������
      Questions.Delete(RandomIndex); // ������� �������������� ������ �� ������
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
  // �������� ������ ���������� ������ � RadioGroup
  SelectedIndex := RadioGroup.ItemIndex;

  // ���������, ��� ��� ������ �����-�� �����
  if SelectedIndex <> -1 then
  begin
    // �������� ��������� �����
    SelectedAnswer := RadioGroup.Items[SelectedIndex];

    // ��������� SQL-������ ��� ������ ����������� ������ �� ���� ������
    Form7.ADOQuery1.Close;
    Form7.ADOQuery1.SQL.Text := 'SELECT [correct answer] FROM answers WHERE [answer text] = :SelectedAnswer';
    Form7.ADOQuery1.Parameters.ParamByName('SelectedAnswer').Value := SelectedAnswer;
    Form7.ADOQuery1.Open;

    // ��������� ������������ ������
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




procedure LoadQuestionsZad2; //��������� ��� ������ �������� 2-�� �������
begin
  Form7.ADOQuery2.Close;
  Form7.ADOQuery2.SQL.Text := 'SELECT TOP 2 [question text] FROM questions';
  Form7.ADOQuery2.Open;

  // ��������� ������� � groupbox
  if not Form7.ADOQuery2.IsEmpty then
  begin
    Form7.Label20.Caption :='37. ' + Form7.ADOQuery2.Fields[0].AsString;
    Form7.ADOQuery2.Next;
    if not Form7.ADOQuery2.IsEmpty then
      Form7.Label22.caption :='38. ' + Form7.ADOQuery2.Fields[0].AsString;
  end;
end;
//��������� ��� ������ ������� 2-�� �������
procedure LoadAnswersToGroupBox(GroupBox: TGroupBox; StartIndex, Count: Integer);
var
  i, RowIndex: Integer;
  RadioButton: TRadioButton;
begin

  // ��������� SQL-������ ��� ������ ���� ����� �� ������� "answers text" � "correct answer"
  Form7.ADOQuery2.Close;
  Form7.ADOQuery2.SQL.Text := 'SELECT [answer text], [correct answer] FROM answers';
  Form7.ADOQuery2.Open;

  // ���������� ��������� �� ������ ����� � ���������� �������
  RowIndex := 0;
  while not Form7.ADOQuery2.Eof and (RowIndex < StartIndex) do
  begin
    Form7.ADOQuery2.Next;
    Inc(RowIndex);
  end;

  // ��������� ������ � RadioButton ������ GroupBox
  for i := 0 to GroupBox.ControlCount - 1 do
  begin
    if (GroupBox.Controls[i] is TRadioButton) and (not Form7.ADOQuery2.Eof) then
    begin
      RadioButton := TRadioButton(GroupBox.Controls[i]);
      RadioButton.Caption := Form7.ADOQuery2.FieldByName('answer text').AsString;
      RadioButton.Tag := Ord(Form7.ADOQuery2.FieldByName('correct answer').AsBoolean);
      Form7.ADOQuery2.Next;
      if RowIndex >= StartIndex + Count then
        Break; // ���� ��������� ������ ���������� �������, ������� �� �����
    end;
  end;
end;






procedure LoadQuestionsZad3; //��������� ��� �������� � ������ �������� 3-�� �������
begin
  Form7.ADOQuery3.Close;
  Form7.ADOQuery3.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form7.ADOQuery3.Open;

  // ��������� ������� � Label
  if not Form7.ADOQuery3.IsEmpty then
  begin
    Form7.Label8.Caption :='39. ' + Form7.ADOQuery3.Fields[0].AsString; // ������ ������
    Form7.ADOQuery3.Next;
    if not Form7.ADOQuery3.IsEmpty then
    begin
      Form7.Label9.Caption :='40. ' + Form7.ADOQuery3.Fields[0].AsString; // ������ ������
      Form7.ADOQuery3.Next;
      if not Form7.ADOQuery3.IsEmpty then
      begin
        Form7.Label21.Caption :='41. ' + Form7.ADOQuery3.Fields[0].AsString; // ������ ������
        Form7.ADOQuery3.Next;
        if not Form7.ADOQuery3.IsEmpty then
          Form7.Label23.Caption :='42. ' + Form7.ADOQuery3.Fields[0].AsString; // ��������� ������
      end;
    end;
  end;
end;

procedure CheckAllAnswersZad3(Edit: TEdit; AnswerIndex: Integer); //�������� ������������ ������� 3-�� �������
var
  TextFromDatabase: string;
begin
    // ��������� ADOQuery3, ���� �� ��� ������
    Form7.ADOQuery3.Close;
    // ������������� ����� SQL ������� ��� ��������� ������ ������ �� ���� ������ �� �������
    Form7.ADOQuery3.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // ������������� �������� ��������� :answer_index ��� �������
    Form7.ADOQuery3.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // ��������� ADOQuery3 ��� ���������� �������
    Form7.ADOQuery3.Open;
    if not Form7.ADOQuery3.IsEmpty then
      TextFromDatabase := Form7.ADOQuery3.FieldByName('answer text').AsString;
    Form7.ADOQuery3.Close;

  // ���������� ����� �� ���� ������ � ������� � Edit
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




procedure TForm7.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = '39.' then
    Edit1.Text := ''; // ������� ����������� ����� ��� ����� � ���� Edit
    Edit1.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = ' ') then
  begin
    Edit1.Text := '39.';    // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit1.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit2Enter(Sender: TObject);
begin
   if Edit2.Text = '40.' then
    Edit2.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit2.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit2Exit(Sender: TObject);
begin
   if (Edit2.Text = '') or (Edit2.Text = ' ') then
  begin
    Edit2.Text := '40.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit2.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit6Enter(Sender: TObject);
begin
    if Edit6.Text = '41.' then
    Edit6.Text := ''; // ������� ����������� ����� ��� ����� � ���� Edit
    Edit6.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit6Exit(Sender: TObject);
begin
   if (Edit6.Text = '') or (Edit6.Text = ' ') then
  begin
    Edit6.Text := '41.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit6.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit9Enter(Sender: TObject);
begin
    if Edit9.Text = '42.' then
    Edit9.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit9.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit9Exit(Sender: TObject);
begin
   if (Edit9.Text = '') or (Edit9.Text = ' ') then
  begin
    Edit9.Text := '42.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit9.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit9.Font.Color := clBlack;
end;





procedure LoadQuestionsZad4; //��������� ��� �������� � ������ �������� 4-�� �������
begin
  Form7.ADOQuery4.Close;
  Form7.ADOQuery4.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form7.ADOQuery4.Open;

  // ��������� ������� � Label
  if not Form7.ADOQuery4.IsEmpty then
  begin
    Form7.Label12.Caption :='43. ' + Form7.ADOQuery4.Fields[0].AsString; // ������ ������
    Form7.ADOQuery4.Next;
    if not Form7.ADOQuery4.IsEmpty then
    begin
      Form7.Label13.Caption :='44. ' + Form7.ADOQuery4.Fields[0].AsString; // ������ ������
      Form7.ADOQuery4.Next;
      if not Form7.ADOQuery4.IsEmpty then
      begin
        Form7.Label24.Caption :='45. ' + Form7.ADOQuery4.Fields[0].AsString; // ������ ������
        Form7.ADOQuery4.Next;
        if not Form7.ADOQuery4.IsEmpty then
          Form7.Label25.Caption :='46. ' + Form7.ADOQuery4.Fields[0].AsString; // ��������� ������
      end;
    end;
  end;
end;

procedure CheckAllAnswersZad4(Edit: TEdit; AnswerIndex: Integer); //�������� ������������ ������� 4-�� �������
var
  TextFromDatabase: string;
begin
    // ��������� ADOQuery3, ���� �� ��� ������
    Form7.ADOQuery4.Close;
    // ������������� ����� SQL ������� ��� ��������� ������ ������ �� ���� ������ �� �������
    Form7.ADOQuery4.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // ������������� �������� ��������� :answer_index ��� �������
    Form7.ADOQuery4.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // ��������� ADOQuery3 ��� ���������� �������
    Form7.ADOQuery4.Open;
    if not Form7.ADOQuery4.IsEmpty then
      TextFromDatabase := Form7.ADOQuery4.FieldByName('answer text').AsString;
    Form7.ADOQuery4.Close;

  // ���������� ����� �� ���� ������ � ������� � Edit
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


procedure TForm7.Edit3Enter(Sender: TObject);
begin
  if Edit3.Text = '43.' then
    Edit3.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit3.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit3Exit(Sender: TObject);
begin
  if (Edit3.Text = '') or (Edit3.Text = ' ') then
  begin
    Edit3.Text := '43.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit3.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit4Enter(Sender: TObject);
begin
   if Edit4.Text = '44.' then
    Edit4.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit4.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit4Exit(Sender: TObject);
begin
  if (Edit4.Text = '') or (Edit4.Text = ' ') then
  begin
    Edit4.Text := '44.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit4.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit10Enter(Sender: TObject);
begin
   if Edit10.Text = '45.' then
    Edit10.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit10.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit10Exit(Sender: TObject);
begin
  if (Edit10.Text = '') or (Edit10.Text = ' ') then
  begin
    Edit10.Text := '45.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit10.Font.Color := clGray;    //    ����� ���� ������ �����
    end
  else
    Edit1.Font.Color := clBlack;
end;

procedure TForm7.Edit11Enter(Sender: TObject);
begin
   if Edit11.Text = '46.' then
    Edit11.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit11.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm7.Edit11Exit(Sender: TObject);
begin
  if (Edit11.Text = '') or (Edit11.Text = ' ') then
  begin
    Edit11.Text := '46.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit11.Font.Color := clGray;    //    ����� ���� ������ �����
  end
  else
    Edit1.Font.Color := clBlack;
end;





procedure LoadQuestionsZad5; //��������� ��� �������� � ������ �������� 5-�� �������
begin
  Form7.ADOQuery5.Close;
  Form7.ADOQuery5.SQL.Text := 'SELECT TOP 1 [question text] FROM questions';
  Form7.ADOQuery5.Open;

  // ��������� ������� � Label
  if not Form7.ADOQuery5.IsEmpty then
    Form7.Label16.Caption := Form7.ADOQuery5.Fields[0].AsString; // ������ ������
end;

procedure CheckAllAnswersZad5(Edit: TEdit; AnswerIndex: Integer); //�������� ������������ ������� 5-�� �������
var
  TextFromDatabase: string;
begin
    // ��������� ADOQuery3, ���� �� ��� ������
    Form7.ADOQuery5.Close;
    // ������������� ����� SQL ������� ��� ��������� ������ ������ �� ���� ������ �� �������
    Form7.ADOQuery5.SQL.Text := 'SELECT [answer text] FROM answers WHERE code = :answer_index';
    // ������������� �������� ��������� :answer_index ��� �������
    Form7.ADOQuery5.Parameters.ParamByName('answer_index').Value := AnswerIndex;
    // ��������� ADOQuery3 ��� ���������� �������
    Form7.ADOQuery5.Open;
    if not Form7.ADOQuery5.IsEmpty then
      TextFromDatabase := Form7.ADOQuery5.FieldByName('answer text').AsString;
    Form7.ADOQuery5.Close;

  // ���������� ����� �� ���� ������ � ������� � Edit
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






























procedure TForm7.Button1Click(Sender: TObject);
var i:integer;  RadioButton: TRadioButton;
begin
//�������� ������������ ������ 1-�� �������
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

  //�������� 2-�� �������
  // �������� �� ���� RadioButton ������ GroupBox
for i := 0 to GroupBox1.ControlCount - 1 do
begin
  if GroupBox1.Controls[i] is TRadioButton then
  begin
    RadioButton := TRadioButton(GroupBox1.Controls[i]);
    // ��������� ������ �� RadioButton � �������� �� �� ���������� �������
    if RadioButton.Checked then
    begin
      if RadioButton.Tag = 1 then
      begin
        Inc(Ball, 2); // ���� ������ ���������� �����, ����������� ���� �� 2
        Inc(right); // ����������� ������� ���������� �������
      end
      else
      begin
        Inc(incorrect); // ����������� ������� ������������ �������
      end;
    end;
  end;
end;

for i := 0 to GroupBox2.ControlCount - 1 do
 begin
  if GroupBox2.Controls[i] is TRadioButton then
  begin
    RadioButton := TRadioButton(GroupBox2.Controls[i]);
    // ��������� ������ �� RadioButton � �������� �� �� ���������� �������
    if RadioButton.Checked then
    begin
      if RadioButton.Tag = 1 then
      begin
        Inc(Ball, 2); // ���� ������ ���������� �����, ����������� ���� �� 2
        Inc(right); // ����������� ������� ���������� �������
      end
      else
      begin
        Inc(incorrect); // ����������� ������� ������������ �������
      end;
    end;
  end;
 end;

//�������� ������������ ������� 3-�� �������
CheckAllAnswersZad3(edit1,1);
CheckAllAnswersZad3(edit2,2);
CheckAllAnswersZad3(edit6,3);
CheckAllAnswersZad3(edit9,4);

//�������� ������������ ������� 4-�� �������
CheckAllAnswersZad4(edit3,1);
CheckAllAnswersZad4(edit4,2);
CheckAllAnswersZad4(edit10,3);
CheckAllAnswersZad4(edit11,4);

//�������� ������������ ������� 5-�� �������
CheckAllAnswersZad5(edit5,1);
CheckAllAnswersZad5(edit7,2);
CheckAllAnswersZad5(edit8,3);
CheckAllAnswersZad5(edit12,4);

//����� ������
  Form7.Label32.Caption:= inttostr(Ball)+'/100';
  Form7.Label33.Caption:= inttostr(right);
  Form7.Label34.Caption:= inttostr(incorrect);


  if (ball >= 0) then   //������� ��� ������������ � ��
  begin
    // �������������� SQL-������ ��� ���������� ������ � �������
    ADOQuery6.SQL.Text := 'UPDATE ����������� SET Test2 = :Test2 WHERE id = :ID';

    // ������ �������� ��������� Test1
    ADOQuery6.Parameters.ParamByName('Test1').Value := Form7.Label32.Caption;

    // ������������, ��� � ������������ ���� ���������� ID, � �������� ��� � ���������
    ADOQuery6.Parameters.ParamByName('ID').Value := UserID;

    // ��������� SQL-������
    ADOQuery6.ExecSQL;
  end;
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
end;

procedure TForm7.FormShow(Sender: TObject);
begin
ScrollBox1.SetFocus;//����������� ����� ���� �������
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
 showmessage('����������: � ������ �������� �� ������� ����� �������� ����� ��������.');
   Form1.Visible:= True;
   Form7.Visible:= False;
end;

 //���������, ������� ������ �� ���������� ������
procedure CheckButtonState;
begin
  if Form7.Label28.Caption <> '50' then
    Form7.Button1.Enabled := False
  else
    Form7.Button1.Enabled := True;
end;

end.
