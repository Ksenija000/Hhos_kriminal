unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.GIFImg;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    Button2: TButton;
    Image3: TImage;
    Memo1: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  f: text; // файловая переменная
s: string; //вспомогательная переменная для считывания строк из текстов. файла

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit2, Unit3, Unit5, Unit6, Unit7, Unit8, Unit9, Unit18, Unit19;

procedure TForm4.Button1Click(Sender: TObject);
begin
 Form4.Hide;
 Form3.Show;
end;




procedure TForm4.Button2Click(Sender: TObject);
begin
 Form4.Hide;
  Image2.Visible:=False;
  Image3.Visible:=False;
  (Image2.Picture.Graphic as TGIFImage).Animate :=False;
   (Image3.Picture.Graphic as TGIFImage).Animate :=False;
  Edit1.Clear;
  Memo1.Clear;
    Image3.Visible:=false;
  Memo1.Visible:=false;
 Button1.Visible:=true;
 Button2.Visible:=False;
 Button3.Visible:=False;
  Edit1.Visible:=true;

 Form19.Show;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Memo1.Clear;

  Memo1.Visible:=True;
   AssignFile( f ,'Обстоятельства.txt');
 reset(f); //Открываем файл для чтения
While not Eof(f) do
begin
readln(f,s); //Считываем первую строку из файла
Memo1.Text:=Memo1.Text+s;
end;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var   e: string;
begin
e:=Edit1.Text;
if e='Добене Осмонд' then
begin
Image2.Visible:=True;
Edit1.Visible:=False;
Button1.Visible:=False;
Button2.Visible:=True;
Button3.Visible:=True;
(Image2.Picture.Graphic as TGIFImage).Animate :=True;

 AssignFile( f ,'победы.txt');
 reset(f);  //Открываем файл для чтения
 readln(f,s);
  CloseFile(f);
 s:=IntToStr(StrToInt(s)+1);
  AssignFile( f ,'победы.txt');
 rewrite(f);//Открываем файл для запаси
 writeln(f,s);
    CloseFile(f);
end;


if e<> 'Добене Осмонд' then
begin
Image3.Visible:=True;
Edit1.Visible:=False;
Button1.Visible:=False;
Button2.Visible:=True;
(Image3.Picture.Graphic as TGIFImage).Animate :=True;

 AssignFile( f ,'поражения.txt');
  reset(f);  //Открываем файл для чтения
 readln(f,s);
  CloseFile(f);
 s:=IntToStr(StrToInt(s)+1);
  AssignFile( f ,'поражения.txt');
 rewrite(f);//Открываем файл для запаси
 writeln(f,s);
    CloseFile(f);
end;

end;

end.
