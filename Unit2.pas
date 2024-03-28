unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Bevel6: TBevel;
    Image3: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit5;

{$R *.dfm}


procedure TForm2.Image3MouseEnter(Sender: TObject);
begin
//при наведении курсора на картинку открывается форма5(становится видимым)
Form5.Visible:=true;
end;
procedure TForm2.Label2MouseEnter(Sender: TObject);
begin
//при наведении курсора на label2, форма5 становится невидимой
Form5.Visible:=false;
end;
procedure TForm2.FormMouseEnter(Sender: TObject);
begin
//при наведении курсора на форму, форма5 становится невидимой
Form5.Visible:=false;
end;



procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  Form2.close;
  Form1.Visible:= True;
end;

end.
