unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,GIFImg, Vcl.Imaging.jpeg,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, PngImage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
//Form4.Close;
  ( Image2.Picture.Graphic as TGIFImage ).Animate := True;

  ( Image2.Picture.Graphic as TGIFImage ).AnimationSpeed:= 200;

  Form1.DoubleBuffered := True;



end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   Form1.Visible:= False;
   Form2.Show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
form2.Close;
Form1.Close;
Form4.Close;
end;

end.
