object Form1: TForm1
  Left = 0
  Top = 0
  Width = 579
  Height = 328
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    563
    290)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 561
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open Table'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btnnovo: TButton
    Left = 8
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnnovoClick
  end
  object btnalterar: TButton
    Left = 96
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = btnalterarClick
  end
  object Query1: TQuery
    DatabaseName = 'F:\DBE\'
    Left = 8
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 9
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 96
    Top = 8
  end
end
