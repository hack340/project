unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  nota1: real;
  nota2: real;
  nota3: real;
  nota4: real;
  soma: real;
begin
  nota1:= strtofloat(edit2.text);
  nota2:= strtofloat(edit3.text);
  nota3:= strtofloat(edit4.text);
  nota4:= strtofloat(edit5.text);

  Edit1.SetFocus;

  soma:= ((nota1 + nota2 + nota3 + nota4) /4 );
  label6.caption:= 'Aluno e M?dia: ' + (edit1.text) + '   ' + floattostr(soma) + '  ';

  if soma >= 6 then
    begin
     ShowMessage('Aluno Aprovado!');
    end
  else
    begin
     ShowMessage('Aluno Reprovado!');
    end;
end;

end.
