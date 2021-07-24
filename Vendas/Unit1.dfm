object F_inicial: TF_inicial
  Left = 0
  Top = 0
  Caption = 'Sistemas de Vendas'
  ClientHeight = 612
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 16
  object stBar_inicial: TStatusBar
    Left = 0
    Top = 593
    Width = 793
    Height = 19
    Panels = <>
    ExplicitLeft = 216
    ExplicitTop = 160
    ExplicitWidth = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 89
    Align = alTop
    TabOrder = 1
    object btn_produtos: TSpeedButton
      Left = 8
      Top = 8
      Width = 105
      Height = 73
      Caption = 'produtos'
      OnClick = btn_produtosClick
    end
    object btn_clientes: TSpeedButton
      Left = 128
      Top = 8
      Width = 105
      Height = 73
      Caption = 'clientes'
    end
    object btn_vendas: TSpeedButton
      Left = 248
      Top = 8
      Width = 105
      Height = 73
      Caption = 'vendas'
    end
  end
end
