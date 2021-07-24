unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  idade: real;
begin
  idade:= strtofloat(edit2.text);
  if idade >= 18 then
  begin
    label3.Visible:= true;
    Label3.caption:= edit1.text + ' é maior de idade!'
  end
  else
  begin
    label3.Visible:= true;
    label3.Caption:= edit1.text + ' é menor de idade!'
  end;


end;

end.
