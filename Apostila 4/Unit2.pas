unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  soma: integer;
  valor1: real;
begin
  if edit1.text='' then ShowMessage('Coloque um valor no campo') else
  begin
    //verifica o valor
    soma := strtoint (edit1.text);
    case soma of
      0..100: valor1 := 0.1;
      101..250: valor1 := 0.2;
      251..300: valor1 := 0.3;
      else
      valor1:= 0.4;
  end;
  edit2.text:= FormatFloat('R$ 0.00', soma * valor1+ soma);
  end;
end;

end.
