program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {F_inicial},
  Unit2 in 'Unit2.pas' {F_produtos},
  Unit3 in 'Unit3.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_inicial, F_inicial);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
