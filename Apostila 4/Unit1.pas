unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unit2, unit3, unit4, unit5, unit6, unit7;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.CreateForm(Tform2,Form2);
form2.ShowModal;
form2.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Application.CreateForm(Tform3,form3);
form3.ShowModal;
form3.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Application.CreateForm(Tform4,form4);
form4.ShowModal;
form4.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Application.CreateForm(Tform5,form5);
form5.ShowModal;
form5.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Application.CreateForm(Tform6,form6);
form6.ShowModal;
form6.Free;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Application.CreateForm(Tform7,form7);
form7.ShowModal;
form7.Free;
end;

end.
