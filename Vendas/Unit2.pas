unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls;

type
  TF_produtos = class(TForm)
    stBar2: TStatusBar;
    pagecon_produtos: TPageControl;
    Consultar: TTabSheet;
    pagecon_cadastrar: TTabSheet;
    dbgrd1: TDBGrid;
    txt_busca: TEdit;
    lbl1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_buscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_produtos: TF_produtos;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TF_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
F_produtos:= nil;
end;

procedure TF_produtos.txt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
//buscar produtos
  if Key = #13 then
  begin
    with dm.sql_produtos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from produtos');
      SQL.Add('where pro_nome like :nome');
      ParamByName('nome').Value:= txt_busca.Text + '%';
      Open;

      if RecordCount = 0 then
      begin
        ShowMessage('Produto não encontrado!');
        Close;
        SQL.Clear;
        SQL.Add('select * from produtos');
        Open;
      end;
    end;
  end;
end;

end.
