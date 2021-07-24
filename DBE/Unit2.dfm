object Form2: TForm2
  Left = 0
  Top = 0
  Width = 461
  Height = 240
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 8
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 0
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 0
    Top = 56
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label4: TLabel
    Left = 0
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label5: TLabel
    Left = 0
    Top = 104
    Width = 59
    Height = 13
    Caption = 'Nascimento:'
  end
  object Label6: TLabel
    Left = 0
    Top = 128
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 32
    Width = 233
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 56
    Width = 305
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 80
    Width = 161
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 72
    Top = 104
    Width = 121
    Height = 21
    DataField = 'NASCIMENTO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 72
    Top = 128
    Width = 217
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object btngravar: TButton
    Left = 88
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 6
    OnClick = btngravarClick
  end
  object btncancelar: TButton
    Left = 184
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = btncancelarClick
  end
  object Query1: TQuery
    DatabaseName = 'F:\DBE\'
    SQL.Strings = (
      'select * from cliente.dbf')
    Left = 360
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 392
  end
  object Query2: TQuery
    DatabaseName = 'F:\DBE\'
    SQL.Strings = (
      'select * from cliente.dbf')
    Left = 416
    Top = 144
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Query1
    Left = 328
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 384
    Top = 144
  end
end
