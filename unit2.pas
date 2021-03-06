unit Unit2;

{$mode objfpc}{$H+}

interface

uses
   Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
   ComCtrls, StdCtrls, DbCtrls, Buttons, RichMemo;
type
  { TForm2 }

  TForm2 = class(TForm)
    button_goHome: TButton;
    image_bg: TImage;
    RichMemo1: TRichMemo;
    TreeView1: TTreeView;
    files_path: TStringList;
    procedure button_goHomeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1OnSelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.button_goHomeClick(Sender: TObject);
begin
   Form2.Hide;
   Application.MainForm.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  file_name: string;
begin
   files_path:=TStringList.Create;
   file_name:=ExtractFileDir(Application.ExeName) + PathDelim + 'static' + PathDelim + 'config.txt';
   if (FileExists(file_name)) then
      files_path.LoadFromFile(file_name)
   else Exit();
end;


procedure TForm2.TreeView1OnSelectionChanged(Sender: TObject);
var
  lection_file: string;
  file_name: string;
  source: TFileStream;
begin
   RichMemo1.Clear();
   if (TreeView1.Selected.HasChildren = False) then
   begin
     for file_name in files_path do
     begin
       if (TreeView1.Selected.Text = ExtractFileNameWithoutExt(file_name)) then
       begin
         lection_file:= ExtractFileDir(Application.ExeName) + PathDelim + 'static' + PathDelim + file_name;
         break;
       end;
     end;

     if FileExists(lection_file) then
     begin
       source := TFileStream.Create(lection_file, fmOpenRead);
       RichMemo1.LoadRichText(source);

       FreeAndNil(source);
     end;
    end;
end;

end.

