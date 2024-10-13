unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
 Form9.Hide;
 Form8.Show;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm9.Image2Click(Sender: TObject);
begin
 Form9.Hide;
 Form10.Show;


end;

procedure TForm9.Image3Click(Sender: TObject);
begin
 Form9.Hide;
 Form11.Show;
end;

end.
