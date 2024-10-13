unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm14 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Image2: TImage;
    Memo1: TMemo;
    Image3: TImage;
    Label2: TLabel;
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
  Form14: TForm14;
  f: text; // �������� ����������
s: string; //��������������� ���������� ��� ���������� ����� �� �������. �����
q,g:integer;
implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit15, Unit16, Unit17, Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit19;

procedure TForm14.Button1Click(Sender: TObject);
begin
     Form14.Hide;
 Form11.Show;

 Image3.Visible:=True;
Image2.Visible:=True;
Label2.Visible:=True;
Label2.Caption:='';
Memo1.Visible:=True;
q:=0;
 g:=1;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Close;
end;

procedure TForm14.FormCreate(Sender: TObject);
begin
q:=0;
 g:=1;
end;

procedure TForm14.Image3Click(Sender: TObject);
var
s1,s2:string;
begin
  AssignFile( f ,'�������� � ��������.txt');
 reset(f); //��������� ���� ��� ������
While not Eof(f) do
begin
readln(f,s); //��������� ������ ������ �� �����
q:=q+1;
if (q=g) then
break;
end;

if not Eof(f) then
begin

if (s[1]='-') then
begin //���� ������ ������ ������ �-� ������ ��� ����� ���������
Label2.Caption:='��������:';
delete(s,1,1);
Memo1.Clear;
Memo1.Text:=s;
end



else if s[1]='*' then begin //���� ���� ������ �*� ������ ��� ����� �� ��������                                                             //7
Label2.Caption:='������� ������:';
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
