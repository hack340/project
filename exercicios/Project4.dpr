program Project4;

uses
  Forms,
  projeto4Unit1 in 'projeto4Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
