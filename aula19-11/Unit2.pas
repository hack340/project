unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  listbox1.DeleteSelected;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  contador: integer;
  soma: integer;
begin
  soma:= 0;
  for contador:= 0 to listbox1.items.count -1 do
  begin
    soma:= soma + strtoint(ListBox1.items[contador]);
  end;
  edit2.Text := inttostr(soma);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  showmessage(inttostr(ListBox1.Items.count));
  showmessage(ListBox1.Items[ListBox1.Items.count]);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  ListBox1.items.add(edit1.Text);
  edit1.clear;
  edit1.SelectAll;
end;

end.
