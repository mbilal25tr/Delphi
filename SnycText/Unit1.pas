unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls, FileCtrl;

type
  TRoot = class(TForm)
    TaskBar: TMainMenu;
    Editor: TMemo;
    Dosya1: TMenuItem;
    MevcutDosya: TLabel;
    A1: TMenuItem;
    Kaydet1: TMenuItem;
    FarklKaydet1: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    Ayarlar1: TMenuItem;
    YazTipi1: TMenuItem;
    EditrRengi1: TMenuItem;
    FontDialog: TFontDialog;
    ColorDialog: TColorDialog;
    FindDialog: TFindDialog;
    Edit1: TMenuItem;
    Bul1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure A1Click(Sender: TObject);
    procedure Kaydet1Click(Sender: TObject);
    procedure FarklKaydet1Click(Sender: TObject);
    procedure YazTipi1Click(Sender: TObject);
    procedure EditrRengi1Click(Sender: TObject);
    procedure EditorKeyPress(Sender: TObject; var Key: Char);
    procedure Bul1Click(Sender: TObject);
    procedure FindDialogFind(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Root: TRoot;
  dosyaYolu:String;

implementation

{$R *.dfm}

procedure TRoot.A1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    dosyaYolu:=OpenDialog.filename;
    Editor.Lines.LoadFromFile(dosyaYolu);
    Root.Caption:='Snyctext';
    MevcutDosya.Caption:='Mevcut Dosya: '+dosyaYolu;
  end;

end;

procedure TRoot.Bul1Click(Sender: TObject);
begin
  FindDialog.Execute;
end;

procedure TRoot.EditorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^A then
  begin
    Editor.SelectAll;
    Key:=#0;
  end;
end;

procedure TRoot.EditrRengi1Click(Sender: TObject);
var
inifile:TStringList;
begin
  ColorDialog.Color:= Editor.Color;
  if ColorDialog.Execute then
  begin
    Editor.Color:= ColorDialog.Color;

    inifile:= TStringList.Create;
    inifile.Add(FontDialog.Font.Name);
    inifile.Add(IntToStr(FontDialog.Font.Size));
    inifile.Add(ColorToString(FontDialog.Font.Color));

    inifile.Add(ColorToString(ColorDialog.Color));
    inifile.SaveToFile('settings.ini');
  end;
end;

procedure TRoot.FarklKaydet1Click(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    dosyaYolu:=SaveDialog.filename;
    Editor.Lines.SaveToFile(SaveDialog.filename);
    MevcutDosya.Caption:='Mevcut Dosya: '+dosyaYolu;
  end;
end;

procedure TRoot.FindDialogFind(Sender: TObject);
var
line: Integer;
begin
  for line := 0 to Editor.Lines.Count - 1 do
  begin
    if Pos(FindDialog.FindText, Editor.Lines[line]) > 0 then
      ShowMessage('Hedef Bulundu! Satýr: ' + IntToStr(line+1));
  end;

end;

procedure TRoot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:= canone;
  
case MessageDlg('Açýk olan dosyayý kaydetmek ister misin?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
    mrYes:
    begin
      if dosyaYolu <> '' then
        begin
          Editor.Lines.SaveToFile(dosyaYolu);
          Application.Terminate;
        end
      else
        begin
          if SaveDialog.Execute then
          begin
            Editor.Lines.SaveToFile(SaveDialog.filename);
            Application.Terminate;
          end;
        end;
    end;
    mrNo:
    begin
      Application.Terminate;
    end;
    mrCancel:
    begin
    end;
  end;


  Application.Terminate;
end;

procedure TRoot.FormCreate(Sender: TObject);
var
inifile:TStringList;
begin
  inifile:= TStringList.Create;
  if FileExists('settings.ini', True) then
  begin
    inifile.LoadFromFile('settings.ini');

    Editor.Font.Name:= inifile.Strings[0];
    Editor.Font.Size:= StrToInt(inifile.Strings[1]);
    Editor.Font.Color:= StringToColor(inifile.Strings[2]);

    Editor.Color:= StringToColor(inifile.Strings[3]);

    FontDialog.Font.Name:= inifile.Strings[0];
    FontDialog.Font.Size:= StrToInt(inifile.Strings[1]);
    FontDialog.Font.Color:= StringToColor(inifile.Strings[2]);
    ColorDialog.Color:= StringToColor(inifile.Strings[3]);
  end;
end;

procedure TRoot.Kaydet1Click(Sender: TObject);
begin
  if OpenDialog.filename<>'' then
    begin
      Editor.Lines.SaveToFile(dosyaYolu);
    end
  else
  begin
    if SaveDialog.Execute then
    begin
      dosyaYolu:=SaveDialog.filename;
      Editor.Lines.SaveToFile(SaveDialog.filename);
      MevcutDosya.Caption:='Mevcut Dosya: '+dosyaYolu;
    end;
  end;
end;

procedure TRoot.YazTipi1Click(Sender: TObject);
var
inifile:TStringList;
begin
  FontDialog.Font:= Editor.Font;
  if FontDialog.Execute then
  begin
    Editor.Font:= FontDialog.Font;

    inifile:= TStringList.Create;
    inifile.Add(FontDialog.Font.Name);
    inifile.Add(IntToStr(FontDialog.Font.Size));
    inifile.Add(ColorToString(FontDialog.Font.Color));

    inifile.Add(ColorToString(ColorDialog.Color));
    inifile.SaveToFile('settings.ini');
  end;
end;
end.
