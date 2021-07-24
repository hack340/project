object Form1: TForm1
  Left = 0
  Top = 0
  Width = 391
  Height = 347
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
    309)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 355
    Height = 245
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
    Top = 259
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Incluir'
    TabOrder = 1
    OnClick = btnIncluirClick
  end
  object btnAlterar: TButton
    Left = 96
    Top = 259
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnApagar: TButton
    Left = 176
    Top = 259
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Apagar'
    TabOrder = 3
    OnClick = btnApagarClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 290
    Width = 375
    Height = 19
    Panels = <>
  end
  object Button1: TButton
    Left = 256
    Top = 259
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = Button1Click
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
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.RulerType = rtBothCm
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSystem1Print
    OnPrintHeader = RvSystem1PrintHeader
    Left = 184
    Top = 72
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave Reports (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    BufferDocument = True
    Left = 216
    Top = 72
  end
end
