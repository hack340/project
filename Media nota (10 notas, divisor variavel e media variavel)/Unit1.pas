unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit8: TEdit;
    Label15: TLabel;
    Edit9: TEdit;
    Label16: TLabel;
    Edit10: TEdit;
    Label17: TLabel;
    Edit11: TEdit;
    Label18: TLabel;
    Edit12: TEdit;
    Label19: TLabel;
    Edit13: TEdit;
    Button2: TButton;
    Label20: TLabel;
    Edit14: TEdit;
    Label21: TLabel;
    Edit15: TEdit;
    Label22: TLabel;
    Edit16: TEdit;
    Label23: TLabel;
    Edit17: TEdit;
    PrintDialog1: TPrintDialog;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  nota1: real;
  nota2: real;
  nota3: real;
  nota4: real;
  nota5: real;
  nota6: real;
  nota7: real;
  nota8: real;
  nota9: real;
  nota10: real;
  resultado: real;
  media: real;
  divisor: real;
begin
// valida��o dos campos de nota, media e divisor, so funciona se for antes de receber as variaveis.
  if (edit1.Text='') or (edit1.Text=' ')
  then
    begin
      edit1.Text:= '0'
    end;

  if (edit2.Text='') or (edit2.Text=' ')
  then
    begin
      edit2.Text:= '0'
    end;

  if (edit3.Text='') or (edit3.Text=' ')
  then
    begin
      edit3.Text:= '0'
    end;

  if (edit4.Text='') or (edit4.Text=' ')
  then
    begin
      edit4.Text:= '0'
    end;

  if (edit5.Text='') or (edit5.Text=' ')
  then
    begin
      edit5.Text:= '0'
    end;

  if (edit11.Text='') or (edit11.Text=' ')
  then
    begin
      edit11.Text:= '0'
    end;

  if (edit12.Text='') or (edit12.Text=' ')
  then
    begin
      edit12.Text:= '0'
    end;

  if (edit8.Text='') or (edit8.Text=' ')
  then
    begin
      edit8.Text:= '0'
    end;

  if (edit9.Text='') or (edit9.Text=' ')
  then
    begin
      edit9.Text:= '0'
    end;

  if (edit10.Text='') or (edit10.Text=' ')
  then
    begin
      edit10.Text:= '0'
    end;

  if (edit13.Text='') or (edit13.Text=' ')
  then
    begin
      edit13.Text:= '0'
    end;

  if (edit17.Text='') or (edit17.Text=' ')
  then
    begin
      edit17.Text:= '0'
    end
  else
    begin
  nota1:= strtofloat(edit1.Text);
  nota2:= strtofloat(edit2.Text);
  nota3:= strtofloat(edit3.Text);
  nota4:= strtofloat(edit4.Text);
  nota5:= strtofloat(edit5.Text);
  nota6:= strtofloat(edit8.Text);
  nota7:= strtofloat(edit9.Text);
  nota8:= strtofloat(edit10.Text);
  nota9:= strtofloat(edit11.Text);
  nota10:= strtofloat(edit12.Text);
  media:= strtofloat(edit17.Text);
  divisor:= strtofloat(edit13.Text);

       resultado:= ((nota1 + nota2 + nota3 + nota4 + nota5 + nota6 +
                     nota7 + nota8 + nota9 + nota10)/ divisor);
  end;

//verificar se est� dentro da media e mostrar se esta aprovado.
  if resultado >= media
  then
    if resultado > 0
    then
      begin
        label11.Caption:= 'Aprovado';
        label10.Font.Color:= clBlue;
        label11.Font.Color:= clBlue
      end
    else
      begin
        label11.Caption:= 'Reprovado';
        label10.Font.Color:= clRed;
        label11.Font.Color:= clRed
      end;

//mudar a cor da media, se for maior que 7 = verde, se for menor = vermelho, se for 7 = amarelo.
    if resultado > media
    then
      begin
         label12.Font.Color:= clGreen;
         label13.Font.Color:= clGreen
      end
    else
      begin
        if resultado < media
        then
          begin
            label12.Font.Color:= clRed;
            label13.Font.Color:= clRed
          end
        else
          begin
            label12.Font.Color:= clgray;
            label13.Font.Color:= clgray
          end;
      end;

  label9.Caption:= edit6.Text;
  label13.Caption:= floattostr(resultado);
  label13.Visible:= True;
  label9.Visible:= True;
  label11.Visible:= true;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  PrintDialog1.Execute();
end;

end.
