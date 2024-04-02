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
    Edit2: TEdit;
    Shape5: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape6: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
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
    ADOConnection3: TADOConnection;
    ADOQuery3: TADOQuery;
    ADOTable3: TADOTable;
    Label22: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Edit6: TEdit;
    Label23: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    ADOConnection4: TADOConnection;
    ADOQuery4: TADOQuery;
    ADOTable4: TADOTable;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit12: TEdit;
    ADOConnection5: TADOConnection;
    ADOTable5: TADOTable;
    ADOQuery5: TADOQuery;
    Label26: TLabel;
    Label27: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit10Enter(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit11Enter(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  ball: Integer;

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

procedure LoadAnswersForQuestion(QuestionID: Integer; RadioGroup: TRadioGroup);//��������� ��� ������ ������� 1-�� �������
begin
//   ������� Items ����� ��������� ����� �������
  RadioGroup.Items.Clear;

//   ��������� SQL-������ ��� ������ ������� � ������� � �������� ID
  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT [answer text] FROM answers WHERE [answer ID] = :QuestionID';
  Form3.ADOQuery1.Parameters.ParamByName('QuestionID').Value := QuestionID;
  Form3.ADOQuery1.Open;

  // ��������� ������ � Items RadioGroup � ���������� ���������� �����
  Form3.ADOQuery1.First;
  while not Form3.ADOQuery1.Eof do
  begin
    RadioGroup.Items.Add(Form3.ADOQuery1.FieldByName('answer text').AsString);

    Form3.ADOQuery1.Next;
  end;
end;

procedure LoadRandomQuestionsZad1;//��������� ��� ������ �������� � ������� 1-�� �������
var
  i, QuestionNumber: Integer;
  Questions: TObjectList<TQuestion>;
  RandomIndex: Integer;
begin
  Form3.ADOQuery1.Close;
  Form3.ADOQuery1.SQL.Text := 'SELECT TOP 36 * FROM questions';
  Form3.ADOQuery1.Open;

  // ������� ������ ��������
  Questions := TObjectList<TQuestion>.Create;
  try
    Form3.ADOQuery1.First;
    while not Form3.ADOQuery1.Eof do
    begin
      Questions.Add(TQuestion.Create(Form3.ADOQuery1.FieldByName('question text').AsString,
                    Form3.ADOQuery1.FieldByName('code').AsInteger));
      Form3.ADOQuery1.Next;
    end;

    QuestionNumber := 1; // ��������� �������� ����������� ������ �������

    // ������� ������� �������� � ������ RadioGroup
    for i := 0 to Min(Questions.Count - 1, 35) do
    begin
      RandomIndex := Random(Questions.Count); // ���������� ��������� ������
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
      Inc(QuestionNumber); // ����������� ���������� ����� �������
      Questions.Delete(RandomIndex); // ������� �������������� ������ �� ������
    end;
  finally
    Questions.Free;
  end;
end;

procedure CheckCorrectAnswer(RadioGroup: TRadioGroup); //�������� ������������ ������ 1-�� �������
var
  SelectedIndex: Integer;
  SelectedAnswer, CorrectAnswer: string;
begin
//   �������� ������ ���������� ������ � RadioGroup
  SelectedIndex := RadioGroup.ItemIndex;

//   ���������, ��� ��� ������ �����-�� �����
  if SelectedIndex <> -1 then
  begin
//     �������� ��������� �����
    SelectedAnswer := RadioGroup.Items[SelectedIndex];

//     ��������� SQL-������ ��� ������ ����������� ������ �� ���� ������
    Form3.ADOQuery1.Close;
    Form3.ADOQuery1.SQL.Text := 'SELECT [correct answer] FROM answers WHERE [answer text] = :SelectedAnswer';
    Form3.ADOQuery1.Parameters.ParamByName('SelectedAnswer').Value := SelectedAnswer;
    Form3.ADOQuery1.Open;

//     ��������� ������������ ������
    if not Form3.ADOQuery1.IsEmpty then
    begin
      CorrectAnswer := Form3.ADOQuery1.FieldByName('correct answer').AsString;
      if CorrectAnswer = 'True' then
        ball:=ball+2
    end
  end;
end;


procedure LoadQuestionsZad2; //��������� ��� ������ �������� 2-�� �������
begin
  Form3.ADOQuery2.Close;
  Form3.ADOQuery2.SQL.Text := 'SELECT TOP 2 [question text] FROM questions';
  Form3.ADOQuery2.Open;

  // ��������� ������� � Label4 � Label21
  if not Form3.ADOQuery2.IsEmpty then
  begin
    Form3.Label4.Caption :='37. ' + Form3.ADOQuery2.Fields[0].AsString;
    Form3.ADOQuery2.Next;
    if not Form3.ADOQuery2.IsEmpty then
      Form3.Label22.caption :='38. ' + Form3.ADOQuery2.Fields[0].AsString;
  end;
end;

procedure LoadAnswersToGroupBox(GroupBox: TGroupBox; StartIndex, Count: Integer);
var
  i, RowIndex: Integer;
  RadioButton: TRadioButton;
begin
  // ������� ��� RadioButton ������ GroupBox
  for i := 0 to GroupBox.ControlCount - 1 do
  begin
    if GroupBox.Controls[i] is TRadioButton then
      TRadioButton(GroupBox.Controls[i]).Caption := '';
  end;

  // ��������� SQL-������ ��� ������ ���� ����� �� ������� "answers text" � "correct answer"
  Form3.ADOQuery2.Close;
  Form3.ADOQuery2.SQL.Text := 'SELECT [answer text], [correct answer] FROM answers';
  Form3.ADOQuery2.Open;

  // ���������� ��������� �� ������ ����� � ���������� �������
  RowIndex := 0;
  while not Form3.ADOQuery2.Eof and (RowIndex < StartIndex) do
  begin
    Form3.ADOQuery2.Next;
    Inc(RowIndex);
  end;

  // ��������� ������ � RadioButton ������ GroupBox
  for i := 0 to GroupBox.ControlCount - 1 do
  begin
    if (GroupBox.Controls[i] is TRadioButton) and (not Form3.ADOQuery2.Eof) then
    begin
      RadioButton := TRadioButton(GroupBox.Controls[i]);
      RadioButton.Caption := Form3.ADOQuery2.FieldByName('answer text').AsString;
      RadioButton.Tag := Ord(Form3.ADOQuery2.FieldByName('correct answer').AsBoolean);
      Form3.ADOQuery2.Next;
      Inc(RowIndex);
      if RowIndex >= StartIndex + Count then
        Break; // ���� ��������� ������ ���������� �������, ������� �� �����
    end;
  end;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
     if (Sender is TRadioButton) then
  begin
    if TRadioButton(Sender).Checked and (TRadioButton(Sender).Tag = 1) then
      Inc(ball, 2); // ��������� 2 ����� �� ���������� �����
  end;
end;
procedure TForm3.RadioButton5Click(Sender: TObject);
begin
        if (Sender is TRadioButton) then
  begin
    if TRadioButton(Sender).Checked and (TRadioButton(Sender).Tag = 1) then
      Inc(ball, 2); // ��������� 2 ����� �� ���������� �����
  end;
end;






procedure LoadQuestionsZad3; //��������� ��� �������� � ������ �������� 3-�� �������
begin
  Form3.ADOQuery3.Close;
  Form3.ADOQuery3.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form3.ADOQuery3.Open;

  // ��������� ������� � Label8, Label9, Label21 � Label23
  if not Form3.ADOQuery3.IsEmpty then
  begin
    Form3.Label8.Caption :='39. ' + Form3.ADOQuery3.Fields[0].AsString; // ������ ������
    Form3.ADOQuery3.Next;
    if not Form3.ADOQuery3.IsEmpty then
    begin
      Form3.Label9.Caption :='40. ' + Form3.ADOQuery3.Fields[0].AsString; // ������ ������
      Form3.ADOQuery3.Next;
      if not Form3.ADOQuery3.IsEmpty then
      begin
        Form3.Label21.Caption :='41. ' + Form3.ADOQuery3.Fields[0].AsString; // ������ ������
        Form3.ADOQuery3.Next;
        if not Form3.ADOQuery3.IsEmpty then
          Form3.Label23.Caption :='42. ' + Form3.ADOQuery3.Fields[0].AsString; // ��������� ������
      end;
    end;
  end;
end;


procedure TForm3.Edit1Enter(Sender: TObject);
begin
  if Edit1.Text = '39.' then
    Edit1.Text := ''; // ������� ����������� ����� ��� ����� � ���� Edit
    Edit1.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = ' ') then
    Edit1.Text := '39.';    // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit1.Font.Color := clGray;    //    ����� ���� ������ �����
end;

procedure TForm3.Edit2Enter(Sender: TObject);
begin
  if Edit2.Text = '40.' then
    Edit2.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit2.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit2Exit(Sender: TObject);
begin
  if (Edit2.Text = '') or (Edit2.Text = ' ') then
    Edit2.Text := '40.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit2.Font.Color := clGray;    //    ����� ���� ������ �����
end;

procedure TForm3.Edit6Enter(Sender: TObject);
begin
  if Edit6.Text = '41.' then
    Edit6.Text := ''; // ������� ����������� ����� ��� ����� � ���� Edit
    Edit6.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit6Exit(Sender: TObject);
begin
  if (Edit6.Text = '') or (Edit6.Text = ' ') then
    Edit6.Text := '41.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit6.Font.Color := clGray;    //    ����� ���� ������ �����
end;

procedure TForm3.Edit9Enter(Sender: TObject);
begin
  if Edit9.Text = '42.' then
    Edit9.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit9.Font.Color := clBlack;//    ����� ���� ������ ������

end;

procedure TForm3.Edit9Exit(Sender: TObject);
begin
  if (Edit9.Text = '') or (Edit9.Text = ' ') then
    Edit9.Text := '42.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit9.Font.Color := clGray;    //    ����� ���� ������ �����
end;




procedure LoadQuestionsZad4; //��������� ��� �������� � ������ �������� 4-�� �������
begin
  Form3.ADOQuery4.Close;
  Form3.ADOQuery4.SQL.Text := 'SELECT TOP 4 [question text] FROM questions';
  Form3.ADOQuery4.Open;

  // ��������� ������� � Label
  if not Form3.ADOQuery4.IsEmpty then
  begin
    Form3.Label12.Caption :='43. ' + Form3.ADOQuery4.Fields[0].AsString; // ������ ������
    Form3.ADOQuery4.Next;
    if not Form3.ADOQuery4.IsEmpty then
    begin
      Form3.Label13.Caption :='44. ' + Form3.ADOQuery4.Fields[0].AsString; // ������ ������
      Form3.ADOQuery4.Next;
      if not Form3.ADOQuery4.IsEmpty then
      begin
        Form3.Label24.Caption :='45. ' + Form3.ADOQuery4.Fields[0].AsString; // ������ ������
        Form3.ADOQuery4.Next;
        if not Form3.ADOQuery4.IsEmpty then
          Form3.Label25.Caption :='46. ' + Form3.ADOQuery4.Fields[0].AsString; // ��������� ������
      end;
    end;
  end;
end;

procedure TForm3.Edit3Enter(Sender: TObject);
begin
  if Edit3.Text = '43.' then
    Edit3.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit3.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit3Exit(Sender: TObject);
begin
  if (Edit3.Text = '') or (Edit3.Text = ' ') then
    Edit3.Text := '43.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit3.Font.Color := clGray;    //    ����� ���� ������ �����
end;

procedure TForm3.Edit4Enter(Sender: TObject);
begin
  if Edit4.Text = '44.' then
    Edit4.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit4.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit4Exit(Sender: TObject);
begin
  if (Edit4.Text = '') or (Edit4.Text = ' ') then
    Edit4.Text := '44.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit4.Font.Color := clGray;    //    ����� ���� ������ �����
end;

procedure TForm3.Edit10Enter(Sender: TObject);
begin
  if Edit10.Text = '45.' then
    Edit10.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit10.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit10Exit(Sender: TObject);
begin
  if (Edit10.Text = '') or (Edit10.Text = ' ') then
    Edit10.Text := '45.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit10.Font.Color := clGray;    //    ����� ���� ������ �����
end;

procedure TForm3.Edit11Enter(Sender: TObject);
begin
  if Edit11.Text = '46.' then
    Edit11.Text := '';  // ������� ����������� ����� ��� ����� � ���� Edit
    Edit11.Font.Color := clBlack;//    ����� ���� ������ ������
end;

procedure TForm3.Edit11Exit(Sender: TObject);
begin
  if (Edit11.Text = '') or (Edit11.Text = ' ') then
    Edit11.Text := '46.';     // ��������������� ����������� ����� ��� ������ �� ���� Edit
    Edit11.Font.Color := clGray;    //    ����� ���� ������ �����
end;




procedure LoadQuestionsZad5; //��������� ��� �������� � ������ �������� 5-�� �������
begin
  Form3.ADOQuery5.Close;
  Form3.ADOQuery5.SQL.Text := 'SELECT TOP 1 [question text] FROM questions';
  Form3.ADOQuery5.Open;

  // ��������� ������� � Label
  if not Form3.ADOQuery5.IsEmpty then
    Form3.Label16.Caption := Form3.ADOQuery5.Fields[0].AsString; // ������ ������
end;






procedure TForm3.FormCreate(Sender: TObject);
var
  i: Integer;
  RadioButton: TRadioButton;
begin
  LoadRandomQuestionsZad1;

  LoadQuestionsZad2;
  LoadAnswersToGroupBox(GroupBox1, 0, 4);
  LoadAnswersToGroupBox(GroupBox2, 4, 4);

  LoadQuestionsZad3;

  LoadQuestionsZad4;

  LoadQuestionsZad5;

  // ������� ������� RadioButtonClick � ������ ������������
     for i := 0 to GroupBox1.ControlCount - 1 do
  begin
    if GroupBox1.Controls[i] is TRadioButton then
    begin
      RadioButton := TRadioButton(GroupBox1.Controls[i]);
      RadioButton.OnClick := RadioButton1Click;
    end;
  end;
    // ������� ������� RadioButtonClick � ������ ������������
     for i := 0 to GroupBox2.ControlCount - 1 do
  begin
    if GroupBox2.Controls[i] is TRadioButton then
    begin
      RadioButton := TRadioButton(GroupBox2.Controls[i]);
      RadioButton.OnClick := RadioButton5Click;
    end;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
ScrollBox1.SetFocus;//�����������
end;


procedure TForm3.Button1Click(Sender: TObject);
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
//����� ������
  ShowMessage('�������� ����: ' + IntToStr(ball));
end;


end.
