unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9, Unit19, Unit18;



procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
 Form8.Hide;
 Form9.Show;
end;

procedure TForm8.Image3Click(Sender: TObject);
begin
 Form8.Hide;
 Form3.Show;
end;

end.
