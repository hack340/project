object Form5: TForm5
  Left = 0
  Top = 0
  Width = 440
  Height = 218
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 387
    Height = 20
    Caption = 'Capacidade M'#225'xima do Elevador: 530kg ou 5 Pessoas adultas.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 63
    Height = 13
    Caption = 'QTD Pessoas'
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 62
    Height = 13
    Caption = 'QTD em Kilos'
  end
  object Edit1: TEdit
    Left = 80
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 80
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 304
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Sobe'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Desce'
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 168
    Top = 120
    Width = 73
    Height = 41
    TabOrder = 4
  end
end
