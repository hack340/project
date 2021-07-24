unit projeto3Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
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
var
  contador: integer;
begin
  ListBox1.clear;
  if strtointdef(edit1.Text,0) = 0 then
  begin
    ShowMessage('Valor do Campo é Inválido!');
    edit1.setfocus;
    exit;
  end;

  for contador := 1 to strtoint(edit1.text) do
      ListBox1.Items.add(IntToStr(contador));

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  x: real;
  y: real;
begin
  x:= 10;
  try
    y:= x/0;
    ShowMessage(FloatToStr(y));
  Except
    on EZeroDivide do
       ShowMessage('Divisão por Zero');
  end;
end;

end.
