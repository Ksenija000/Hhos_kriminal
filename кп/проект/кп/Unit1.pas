unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
(Image1.Picture.Graphic as TGIFImage).Animate :=True;
if ProgressBar1.Position < ProgressBar1.Max then
ProgressBar1.Position:=ProgressBar1.Position+10
else begin Timer1.Enabled:=False;
Form1.Close;
end;
end;

end.
