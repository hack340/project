program Project3;

uses
  Forms,
  projeto3Unit1 in 'projeto3Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
