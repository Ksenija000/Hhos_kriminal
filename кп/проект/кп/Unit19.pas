unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm19 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;
   f: text; // файловая переменная
s: string; //вспомогательная переменная для считывания строк из текстов. файла

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit18, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, ShellAPI;

procedure TForm19.BitBtn1Click(Sender: TObject);
begin
Form19.Hide;
 Form3.Show;
end;

procedure TForm19.BitBtn2Click(Sender: TObject);
begin
 Form19.Hide;
 Form18.Show;
end;

procedure TForm19.BitBtn3Click(Sender: TObject);
begin
BitBtn1.Visible:=False;
BitBtn2.Visible:=False;
BitBtn3.Visible:=False;
BitBtn4.Visible:=False;

Label1.Visible:=True;
Label2.Visible:=True;
Image2.Visible:=True;
SpeedButton1.Visible:= True;

  AssignFile( f ,'победы.txt');
 reset(f); //Открываем файл для чтения
readln(f,s);
 Label1.Caption:=s;
 CloseFile(f);

   AssignFile( f ,'поражения.txt');
 reset(f); //Открываем файл для чтенияbegin
readln(f,s);
 Label2.Caption:=s;
 CloseFile(f);

end;

procedure TForm19.BitBtn4Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar('Справка.chm'),nil,nil,SW_SHOW);
end;

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm19.SpeedButton1Click(Sender: TObject);
begin
Image2.Visible:=False;
Label1.Visible:=False;
Label2.Visible:=False;
 BitBtn1.Visible:=True;
BitBtn2.Visible:=True;
BitBtn3.Visible:=True;
BitBtn4.Visible:=True;
SpeedButton1.Visible:= False;
end;

end.
