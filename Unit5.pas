unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Image1: TImage;
    Image2: TImage;
    procedure FormMouseEnter(Sender: TObject);
    procedure FormMouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}


procedure TForm5.FormMouseEnter(Sender: TObject);
begin
  //при наведении курсора на иконку открывается окно(становится видимым)
  Form5.Visible:=true;
end;

procedure TForm5.FormMouseLeave(Sender: TObject);
begin
  //убрав курсор с иконки окно закрывается(становится невидимым)
  Form5.Visible:=false;
end;



procedure TForm5.Image1MouseEnter(Sender: TObject);
begin
   Shape4.Brush.Color:=($00E8E8E8);
end;

procedure TForm5.Image1MouseLeave(Sender: TObject);
begin
    Shape4.Brush.Color:=clWhite;
end;

procedure TForm5.Image2MouseEnter(Sender: TObject);
begin
  Shape3.Brush.Color:=($00E8E8E8);
end;

procedure TForm5.Image2MouseLeave(Sender: TObject);
begin
    Shape3.Brush.Color:=clWhite;
end;

end.
