unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
  distancia: real;
  litro: real;
  valor: real;
  resultado1: real;
  resultado2: real;
begin

  if (edit1.text='') or (edit2.text='') or (edit3.text='') then
  begin
    ShowMessage('Um dos campos está em branco, preencha e calcule novamente!')
  end
  else
  begin
    distancia:= strtofloat(edit1.text);
    litro:= strtofloat(edit2.text);
    valor:= strtofloat(edit3.text);
    resultado1:= distancia / litro;
    resultado2:= resultado1 * valor
  end;

  edit4.Text:= 'Precisará de ' + formatfloat('0.00', resultado1) + ' Litros e irá gastar ' + formatfloat('0.00', resultado2) + ' reais.'



end;

end.
