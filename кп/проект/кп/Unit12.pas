unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm12 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Image2: TImage;
    Memo1: TMemo;
    Label2: TLabel;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
    f: text; // файлова€ переменна€
s: string; //вспомогательна€ переменна€ дл€ считывани€ строк из текстов. файла
q,g:integer;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit13, Unit14, Unit15, Unit16, Unit17, Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit19;

procedure TForm12.Button1Click(Sender: TObject);
begin
   Form12.Hide;
 Form11.Show;

 Image3.Visible:=True;
Image2.Visible:=True;
Label2.Visible:=True;
Label2.Caption:='';
Memo1.Visible:=True;
q:=0;
 g:=1;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
 q:=0;
 g:=1;
end;

procedure TForm12.Image3Click(Sender: TObject);
var
s1,s2:string;
begin
  AssignFile( f ,'–азговор с соседом.txt');
 reset(f); //ќткрываем файл дл€ чтени€
While not Eof(f) do
begin
readln(f,s); //—читываем первую строку из файла
q:=q+1;
if (q=g) then
break;
end;

if not Eof(f) then
begin

if (s[1]='-') then
begin //≈сли первый символ строки С-С значит это слова детектива
Label2.Caption:='ƒетектив:';
delete(s,1,1);
Memo1.Clear;
Memo1.Text:=s;
end



else if s[1]='*' then begin //≈сли перв символ С*Т значит это слова др человека                                                             //7
Label2.Caption:='—осед убитой:';
delete(s,1,1);

Memo1.Clear;
Memo1.Text:=s;
end;

g:=q+1;
q:=0;
end;

if Eof(f) then
 begin
Label1.Visible:=True;
Image2.Visible:=False;
Image3.Visible:=False;
Label2.Visible:=False;
Memo1.Visible:=False;
Memo1.Clear;
Button1.Visible:=True;
CloseFile(f);
 end;
end;

end.
