unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16,
  Unit17, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit19, ShellAPI;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
 Form3.Hide;
 Form8.Show;
end;


procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
 Form3.Hide;
 Form5.Show;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
 Form3.Hide;
 Form6.Show;
 BitBtn1.Visible:=True;

end;

procedure TForm3.Image5Click(Sender: TObject);
begin
  Form3.Hide;
 Form7.Show;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
 Form3.Hide;
 Form19.Show;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar('Справка.chm'),nil,nil,SW_SHOW);
end;

procedure TForm3.N3Click(Sender: TObject);
begin
Form2.Close;
end;

end.
