unit Player;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.MPlayer, Vcl.ExtCtrls, FileCtrl,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    ListBox: TListBox;
    ButtonsGroup: TGroupBox;
    PathLabel: TLabel;
    PathButton: TButton;
    PlayButton: TButton;
    NextButton: TButton;
    PrevButton: TButton;
    MainGroup: TGroupBox;
    MixButton: TButton;
    MediaPlayer: TMediaPlayer;
    FileOpenDialog: TFileOpenDialog;
    procedure PathButtonClick(Sender: TObject);
    procedure PlayButtonClick(Sender: TObject);
    procedure NextButtonClick(Sender: TObject);
    procedure PrevButtonClick(Sender: TObject);
    procedure MixButtonClick(Sender: TObject);
    procedure ListBoxClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  path:String;
  searchRec:TSearchRec;
  playerLength:Integer;

implementation

{$R *.dfm}



procedure TForm1.PathButtonClick(Sender: TObject);
begin
  if FileOpenDialog.Execute then
  begin
    path:=FileOpenDialog.filename;
    PathLabel.Caption:='Çalýnan Kütüphane: '+path;

    ListBox.Clear;

    if FindFirst(path+'*.mp3', faAnyFile, searchRec) = 0 then
    begin
      repeat
        ListBox.AddItem(path+searchRec.Name, nil);
      until FindNext(searchRec) <> 0;
      FindClose(searchRec);
    end;

    MediaPlayer.filename:= ListBox.Items.Strings[0];
    ListBox.Selected[0]:= True;
    MediaPlayer.Open;
    MediaPlayer.Position:= 0;

  end;
end;

procedure TForm1.PlayButtonClick(Sender: TObject);
begin
  if MediaPlayer.filename <> '' then
  begin
    if PlayButton.Caption='|>' then
    begin
      MediaPlayer.Position:= playerLength;
      MediaPlayer.Play;
      PlayButton.Caption:='||';
    end
    else
    begin
      MediaPlayer.Pause;
      playerLength:= MediaPlayer.Position;
      PlayButton.Caption:='|>';
    end;
  end
  else
  begin
    MediaPlayer.filename:= ListBox.Items.Strings[0];
    MediaPlayer.Open;
    MediaPlayer.Play;
    PlayButton.Caption:= '||';
  end;
end;

procedure TForm1.PrevButtonClick(Sender: TObject);
begin
  MediaPlayer.Pause;
  MediaPlayer.Close;
  MediaPlayer.filename:= ListBox.Items.Strings[ListBox.Items.IndexOf(MediaPlayer.filename)-1];
  ListBox.Selected[ListBox.Items.IndexOf(MediaPlayer.filename)]:= True;
  MediaPlayer.Open;
  if PlayButton.Caption='||' then
  begin
    MediaPlayer.Play;
  end
end;


procedure TForm1.ListBoxClick(Sender: TObject);
begin
  MediaPlayer.filename:= ListBox.Items.Strings[ListBox.ItemIndex];
  MediaPlayer.Open;
  MediaPlayer.Play;
  PlayButton.Caption:= '||';
end;

procedure TForm1.MixButtonClick(Sender: TObject);
var
random1: Integer;
i: Integer;
randomChosen: String;
begin
  for i:= 1 to (ListBox.Count) do
  begin
    random1:= Random(ListBox.Count);
    randomChosen:= ListBox.Items.Strings[random1];
    ListBox.Items.Delete(random1);
    ListBox.AddItem(randomChosen, nil);
  end;

  MediaPlayer.Pause;
  MediaPlayer.Close;
  MediaPlayer.filename:= ListBox.Items.Strings[0];
  MediaPlayer.Open;
  MediaPlayer.Play;

  PlayButton.Caption:= '||';
end;

procedure TForm1.NextButtonClick(Sender: TObject);
begin
  MediaPlayer.Pause;
  MediaPlayer.Close;
  MediaPlayer.filename:= ListBox.Items.Strings[ListBox.Items.IndexOf(MediaPlayer.filename)+1];
  ListBox.Selected[ListBox.Items.IndexOf(MediaPlayer.filename)]:= True;
  MediaPlayer.Open;
  if PlayButton.Caption='||' then
  begin
    MediaPlayer.Play;
  end

end;


end.
