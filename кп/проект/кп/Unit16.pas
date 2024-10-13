unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm16 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit17, Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit19;

procedure TForm16.Button1Click(Sender: TObject);
begin
    Form16.Hide;
 Form13.Show;

   Image5.Visible:=False;
    Image3.Visible:=False;
end;

procedure TForm16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm16.Image2Click(Sender: TObject);
begin
 Image3.Visible:=True;
end;

procedure TForm16.Image3Click(Sender: TObject);
begin
  Image3.Visible:=False;
end;

procedure TForm16.Image4Click(Sender: TObject);
begin
  Image5.Visible:=True;
end;

end.
