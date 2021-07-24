unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls;

type
  TF_inicial = class(TForm)
    stBar_inicial: TStatusBar;
    Panel1: TPanel;
    btn_produtos: TSpeedButton;
    btn_clientes: TSpeedButton;
    btn_vendas: TSpeedButton;
    procedure btn_produtosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_inicial: TF_inicial;

implementation

uses Unit2;

{$R *.dfm}

procedure TF_inicial.btn_produtosClick(Sender: TObject);
begin
  if F_produtos = nil then
  begin
    F_produtos:= TF_produtos.Create(self);
    F_produtos.ShowModal;
  end;

end;

end.
