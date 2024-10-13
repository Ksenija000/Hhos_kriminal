unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    image: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit8, Unit9, Unit19;

procedure TForm7.Button1Click(Sender: TObject);
begin
 Form7.Hide;
 Form3.Show;

 Image2.Visible:=False;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm7.Image1Click(Sender: TObject);
begin
    Form7.Hide;
 Form15.Show;
end;

procedure TForm7.Image3Click(Sender: TObject);
begin
Image2.Visible:=True;
end;

end.
