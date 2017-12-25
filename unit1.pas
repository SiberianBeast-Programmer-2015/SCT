unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Unit2, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    button_start: TButton;
    button_authors: TButton;
    image_bg: TImage;
    image_logo: TImage;
    procedure button_startClick(Sender: TObject);
    procedure button_authorsClick(Sender: TObject);
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

procedure TForm1.button_authorsClick(Sender: TObject);
begin
   ShowMessage('SCT - команда Иркутского энергетческого колледжа'+#13#10+'Состав команды:'+#13#10+'Марков Данил Борисович'+#13#10+'Саловарова Диана Алексеевна'+#13#10+'Петрова Юлия Алексеевна'+#13#10+'Куратор команды:'+#13#10+'Ступина Анна Викторовна'+#13#10+ ' © Smart Cat''s Tutorial, 2017');
end;

procedure TForm1.button_startClick(Sender: TObject);
begin
  Form2.show;
  Form1.Hide;
end;
end.

