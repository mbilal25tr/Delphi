program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Root},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Slate Classico');
  Application.CreateForm(TRoot, Root);
  Application.Run;
end.
