unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm11 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
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
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17, Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit19;

procedure TForm11.Button1Click(Sender: TObject);
begin
  Form11.Hide;
 Form9.Show;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm11.Image2Click(Sender: TObject);
begin
   Form11.Hide;
 Form12.Show;
end;

procedure TForm11.Image3Click(Sender: TObject);
begin
    Form11.Hide;
 Form13.Show;
end;

procedure TForm11.Image4Click(Sender: TObject);
begin
     Form11.Hide;
 Form14.Show;
end;

end.
