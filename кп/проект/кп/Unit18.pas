unit Unit18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.MPlayer;

type
  TForm18 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses Unit2, Unit19, Unit3;

procedure TForm18.Button1Click(Sender: TObject);
begin
Form18.Hide;
 Form19.Show;
end;

procedure TForm18.MediaPlayer1Notify(Sender: TObject);
begin
with MediaPlayer1 do case Mode of mpPlaying: if Position = Length then Play;
mpStopped: Rewind;
end;
end;

procedure TForm18.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=0 then
begin
MediaPlayer1.FileName := 'мелодия1.mp3';
MediaPlayer1.Open;
end;

if RadioGroup1.ItemIndex=1 then
begin
MediaPlayer1.FileName := 'мелодия2.mp3';
MediaPlayer1.Open;
end;

if RadioGroup1.ItemIndex=2 then
begin
MediaPlayer1.FileName := 'мелодия3.mp3';
MediaPlayer1.Open;
end;

 if RadioGroup1.ItemIndex=3 then
begin
MediaPlayer1.FileName := 'мелодия4.mp3';
MediaPlayer1.Open;
end;
end;

end.
