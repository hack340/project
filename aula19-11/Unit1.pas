unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unit2;

type
  TForm1 = class(TForm)
    button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.button1Click(Sender: TObject);
var
    contador: integer;
    fatorial: integer;
begin
  fatorial:= 1;
  for contador:= 1 to 5 do
  begin
    fatorial := fatorial * contador;
    memo1.Lines.Add(inttostr(contador));
  end;
  memo1.Lines.add('fotarial de 5: ' + inttostr(fatorial));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
application.CreateForm(tform2,form2);
form2.ShowModal;
form2.free;
end;

end.
