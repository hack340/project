object Form1: TForm1
  Left = 0
  Top = 0
  Width = 391
  Height = 329
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    375
    291)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 355
    Height = 227
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
  end
  object btnIncluir: TButton
    Left = 8
    Top = 257
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Incluir'
    TabOrder = 1
    OnClick = btnIncluirClick
  end
  object btnAlterar: TButton
    Left = 96
    Top = 257
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnApagar: TButton
    Left = 176
    Top = 257
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Apagar'
    TabOrder = 3
    OnClick = btnApagarClick
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-8'
    HostName = '192.168.2.2'
    Port = 5432
    Database = 'aula_senac'
    User = 'postgres'
    Password = '12345ab'
    Properties.Strings = (
      'codepage=LATIN1')
    TransactIsolationLevel = tiReadCommitted
    Left = 16
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 16
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 48
    Top = 48
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 16
    Top = 80
  end
end
