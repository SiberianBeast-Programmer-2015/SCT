unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Unit2, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ShowMessage('SCT - команда Иркутского энергетческого колледжа'+#13#10+'Состав команды:'+#13#10+'Марков Данил Борисович'+#13#10+'Саловарова Диана Алексеевна'+#13#10+'Петрова Юлия Алексеевна'+#13#10+'Куратор команды:'+#13#10+'Ступина Анна Викторовна'+#13#10+ ' © Smart Cat''s Tutorial, 2017');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.show;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm1.StaticText2Click(Sender: TObject);
begin

end;

end.

