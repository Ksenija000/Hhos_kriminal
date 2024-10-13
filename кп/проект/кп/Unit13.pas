unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit14, Unit15, Unit16, Unit17, Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit19;

procedure TForm13.Button1Click(Sender: TObject);
begin
    Form13.Hide;
 Form11.Show;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm13.Image2Click(Sender: TObject);
begin
    Form13.Hide;
 Form16.Show;
end;

end.
