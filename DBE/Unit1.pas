unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, unit2, RpDefine, RpBase,
  RpSystem;

type
  TForm1 = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    btnnovo: TButton;
    btnalterar: TButton;
    RvSystem1: TRvSystem;
    procedure btnalterarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure imprimetexto(rave: trvsystem;
    coluna: real; linha: real; texto: string; fonte: string= 'Arial';
    tamanho: integer = 8; cor: tcolor= clblack;
    estilo: TFontStyles= []);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  query1.Close;
  query1.SQL.Text:=
      'select * from cliente.dbf';
  query1.Open;
end;

procedure TForm1.btnnovoClick(Sender: TObject);
begin
  application.createform(tform2, form2);
  form2.codigo:= 0;
  form2.ShowModal;
  form2.Free;
end;

procedure TForm1.btnalterarClick(Sender: TObject);
begin
  application.createform(tform2, form2);
  form2.codigo:= query1.FieldByName('codigo').AsInteger;
  form2.ShowModal;
  form2.Free;
end;

procedure TForm1.imprimetexto(rave: trvsystem; coluna, linha: real;
  texto: string;  fonte: string; tamanho: integer; cor: tcolor; estilo: TFontStyles);
begin
    with rave.BaseReport do
    begin
      {if bold in estilo = true then
      begin
        bold:= true;
      end
      else
      begin
        bold:= false;
      end;}
      Bold := fsBold in estilo;
      italic := fsItalic in estilo;
      Underline := fsUnderline in estilo;
      Strikeout := fsStrikeOut in estilo;

      FontName := fonte;
      fontsize := tamanho;
      fontcolor := cor;

      GotoXY(coluna,linha);
      Print(texto);

    end;
end;

end.
