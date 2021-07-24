object dm: Tdm
  OldCreateOrder = False
  Height = 456
  Width = 680
  object conecta: TMyConnection
    Database = 'vendas'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 32
    Top = 24
  end
  object sql_produtos: TMyQuery
    Connection = conecta
    SQL.Strings = (
      'select * from produtos')
    Active = True
    Left = 112
    Top = 24
    object intgrfld_produtospro_id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'pro_id'
      Origin = 'produtos.pro_id'
    end
    object strngfld_produtospro_nome: TStringField
      FieldName = 'pro_nome'
      Origin = 'produtos.pro_nome'
      Size = 40
    end
    object strngfld_produtospro_barra: TStringField
      FieldName = 'pro_barra'
      Origin = 'produtos.pro_barra'
      Size = 13
    end
    object fltfld_produtospro_custo: TFloatField
      FieldName = 'pro_custo'
      Origin = 'produtos.pro_custo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object fltfld_produtospro_preco: TFloatField
      FieldName = 'pro_preco'
      Origin = 'produtos.pro_preco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object intgrfld_produtospro_estoque: TIntegerField
      FieldName = 'pro_estoque'
      Origin = 'produtos.pro_estoque'
    end
  end
  object ds_listarProdutos: TMyDataSource
    DataSet = sql_produtos
    Left = 32
    Top = 88
  end
  object tb_produtos: TMyTable
    TableName = 'produtos'
    Connection = conecta
    Active = True
    Left = 32
    Top = 160
    object intgrfld_produtospro_id1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'pro_id'
      Origin = 'produtos.pro_id'
    end
    object strngfld_produtospro_nome1: TStringField
      FieldName = 'pro_nome'
      Origin = 'produtos.pro_nome'
      Size = 40
    end
    object strngfld_produtospro_barra1: TStringField
      FieldName = 'pro_barra'
      Origin = 'produtos.pro_barra'
      Size = 13
    end
    object fltfld_produtospro_custo1: TFloatField
      FieldName = 'pro_custo'
      Origin = 'produtos.pro_custo'
    end
    object fltfld_produtospro_preco1: TFloatField
      FieldName = 'pro_preco'
      Origin = 'produtos.pro_preco'
    end
    object intgrfld_produtospro_estoque1: TIntegerField
      FieldName = 'pro_estoque'
      Origin = 'produtos.pro_estoque'
    end
  end
end
