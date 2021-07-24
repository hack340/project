unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm7 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  produto: real;
  preco: real;
  qtd: real;
begin
//n�o deixar a quantidade zerada
  if edit3.text='' then
  begin
     edit3.text:= floattostr(1)
  end;

//colocar pre�o automaticamente, ao selecionar o item no combobox
  case combobox1.ItemIndex of
  0: preco:= 3.32;
  1: preco:= 6.45;
  2: preco:= 2.37;
  3: preco:= 5.32;
  4: preco:= 6.45;
  5: preco:= 3.50;
  end;

//verificar e adicionar nas variaveis os valores, adicionar a informa��o no memo1
  if (edit1.text='') {or (edit2.text='')} or (edit3.text='') or (ComboBox1.ItemIndex=-1) then
  begin
    ShowMessage('Todos os campos devem estar preenchidos!')
  end
  else
  begin
   produto:= strtofloat(ComboBox1.Items[ComboBox1.itemindex]);
   edit2.text:= floattostr(preco);
   qtd:= strtofloat(edit3.text);
   memo2.Lines.add(floattostr(preco));
   memo3.lines.add(floattostr(qtd));
   Memo1.Lines.Add(ComboBox1.Items[ComboBox1.itemindex] +
      ', ' + floattostr(preco) + ', ' + floattostr(qtd));
  end;

end;



procedure TForm7.Button2Click(Sender: TObject);
var
  produto: real;
  preco: real;
  qtd: real;
  resultado1: real;

begin


//colocar pre�o automaticamente, ao selecionar o item no combobox
  case combobox1.ItemIndex of
  0: preco:= 3.32;
  1: preco:= 6.45;
  2: preco:= 2.37;
  3: preco:= 5.32;
  4: preco:= 6.45;
  5: preco:= 3.50;
  end;

//verificar e adicionar nas variaveis os valores, adicionar a informa��o no memo1
  if (edit1.text='') {or (edit2.text='')} or (edit3.text='') or (ComboBox1.ItemIndex=-1) then
  begin
    ShowMessage('Todos os campos devem estar preenchidos!')
  end
  else
  begin
   produto:= strtofloat(ComboBox1.Items[ComboBox1.itemindex]);
   {preco:= strtofloat(edit2.text);}
   qtd:= strtofloat(edit3.text);
  end;

  resultado1:= preco * qtd;

  if (edit1.text='') {or (edit2.text='')} or (edit3.text='') or (ComboBox1.ItemIndex=-1) then
  begin
    ShowMessage('Todos os campos devem estar preenchidos!')
  end
  else
  begin
    {ShowMessage('A comiss�o do vendedor ' + edit1.text + ' � ' + floattostr((resultado*5)/100));}

  end;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
memo1.Lines.clear;
memo2.Lines.clear;
memo3.Lines.clear;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
Form7.Close;
end;

end.
