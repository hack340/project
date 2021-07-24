unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  pessoas: real;
  peso: real;
begin
  Panel1.Caption:= ' ';
  Panel1.Color:= clbtnface;


  if (edit1.text='') or (edit2.text='') then
  begin
    ShowMessage('O campo PESO e PESSOAS não podem ficar em branco!')
  end
   else
    begin
      pessoas:= strtofloat(edit1.text);
      peso:= strtofloat(edit2.text);

      if pessoas >= 6 then
      begin
        ShowMessage('Capacidade Excedida! Máximo permitido: 5 Pessoas.')
      end
      else
      begin
        Panel1.Caption:= 'Subindo!';
        Panel1.Color:= clgreen
      end;

      if peso >= 531 then
      begin
        ShowMessage('Capacidade Excedida! Máximo permitido: 530Kg.')
      end
      else
      begin
        Panel1.Caption:= 'Subindo!';
        Panel1.Color:= clgreen
      end;
    end;



end;

end.
