unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, UrlMon;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    IdHTTP: TIdHTTP;
    SaveDialog: TSaveDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    begin
    Memo1.Lines.Add('Downloading...');
    URLDownloadToFile(nil, PChar(Edit1.Text), PChar(SaveDialog.Filename), 0, nil);
    Memo1.Lines.Add('Downloaded at '+SaveDialog.Filename);
    end
  except
    begin
      Memo1.Lines.Add('Something went wrong. Check the fields!')
    end
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    Edit2.Text:= SaveDialog.filename;
  end;
end;

end.
