unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Memo1: TMemo;
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
  Form5: TForm5;
  f: text; // файловая переменная
s: string; //вспомогательная переменная для считывания строк из текстов. файла
q,g:integer;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit2, Unit3, Unit4, Unit6, Unit7, Unit8, Unit9, Unit19;

procedure TForm5.Button1Click(Sender: TObject);
begin
 Form5.Hide;
 Form3.Show;

Image3.Visible:=True;
Image2.Visible:=True;
Label2.Visible:=True;
Label2.Caption:='';
Memo1.Visible:=True;
q:=0;
 g:=1;
end;



procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
 q:=0;
 g:=1;
end;



procedure TForm5.Image3Click(Sender: TObject);
var
s1,s2:string;
begin
  AssignFile( f ,'Разговор с прохожим.txt');
 reset(f); //Открываем файл для чтения
While not Eof(f) do
begin
readln(f,s); //Считываем первую строку из файла
q:=q+1;
if (q=g) then
break;
end;

if not Eof(f) then
begin

if (s[1]='-') then
begin //Если первый символ строки ‘-‘ значит это слова детектива
Label2.Caption:='Детектив:';
delete(s,1,1);
Memo1.Clear;
Memo1.Text:=s;
end



else if s[1]='*' then begin //Если перв символ ‘*’ значит это слова др человека                                                             //7
Label2.Caption:='Прохожий:';
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

end ;


end.
