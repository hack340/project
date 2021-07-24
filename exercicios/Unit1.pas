unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
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
  ListBox1.Items.Clear;

  ProgressBar1.Position:= 1;
  ProgressBar1.Max := strtoint(edit1.text);

  //contador := 1;
  while ProgressBar1.Position <= ProgressBar1.Max do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    //if ProgressBar1.max = strtoint (edit1.text) then
      //break;
  end;

//contagem pelo comando while
  {contador := 1;
  while contador <= strtoint(edit1.text) do
  begin
    ListBox1.Items.Add(inttostr(contador));
    inc(contador);
  end;}


//contagem pelo comando repeat
  {contador := 1;
  repeat
    ListBox1.Items.Add(inttostr(contador));
    inc(contador);
  until contador > strtoint(edit1.text);}


//contagem pelo comando for
  {for contador := 1 to strtoint(edit1.text) do
  begin
    listbox1.items.add(intotostr(contador));
  end;}
end;

end.
