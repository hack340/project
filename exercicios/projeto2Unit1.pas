unit projeto2Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Edit5: TEdit;
    Panel1: TPanel;
    Button2: TButton;
    FontDialog1: TFontDialog;
    Edit4: TEdit;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
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
begin
  with edit1 do
    text := 'RICARDO';
    font.color := clred;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  with Panel1 do
  begin
    Font.size := strtoint(edit2.Text);
    Font.Color := ColorBox1.Selected;
    Font.name := Edit4.text;
    Caption := Edit5.Text;
    Color := ColorBox2.Selected;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    with Panel1 do
    begin
      font := FontDialog1.Font;
    end;
  end;
end;

end.
