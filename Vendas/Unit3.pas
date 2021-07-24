unit Unit3;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS;

type
  Tdm = class(TDataModule)
    conecta: TMyConnection;
    sql_produtos: TMyQuery;
    intgrfld_produtospro_id: TIntegerField;
    strngfld_produtospro_nome: TStringField;
    strngfld_produtospro_barra: TStringField;
    fltfld_produtospro_custo: TFloatField;
    fltfld_produtospro_preco: TFloatField;
    intgrfld_produtospro_estoque: TIntegerField;
    ds_listarProdutos: TMyDataSource;
    tb_produtos: TMyTable;
    intgrfld_produtospro_id1: TIntegerField;
    strngfld_produtospro_nome1: TStringField;
    strngfld_produtospro_barra1: TStringField;
    fltfld_produtospro_custo1: TFloatField;
    fltfld_produtospro_preco1: TFloatField;
    intgrfld_produtospro_estoque1: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
