object Form1: TForm1
  Left = 0
  Top = 0
  Width = 749
  Height = 461
  Caption = 'Form1'
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
    Left = 176
    Top = 16
    Width = 90
    Height = 13
    Caption = 'Tamanho da Fonte'
  end
  object Label2: TLabel
    Left = 176
    Top = 40
    Width = 83
    Height = 13
    Caption = 'Largura da Borda'
  end
  object Label3: TLabel
    Left = 176
    Top = 64
    Width = 73
    Height = 13
    Caption = 'Nome da Fonte'
  end
  object Label4: TLabel
    Left = 176
    Top = 88
    Width = 31
    Height = 13
    Caption = 'R'#243'tulo'
  end
  object Label5: TLabel
    Left = 176
    Top = 112
    Width = 63
    Height = 13
    Caption = 'Cor da Fonte'
  end
  object Label6: TLabel
    Left = 176
    Top = 136
    Width = 61
    Height = 13
    Caption = 'Cor do Panel'
  end
  object Edit1: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 72
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 272
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 272
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ColorBox1: TColorBox
    Left = 272
    Top = 112
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 4
  end
  object ColorBox2: TColorBox
    Left = 272
    Top = 136
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 272
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 168
    Top = 168
    Width = 305
    Height = 57
    Caption = 'Panel1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 7
  end
  object Button2: TButton
    Left = 424
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 272
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Button3: TButton
    Left = 520
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Fonte'
    TabOrder = 10
    OnClick = Button3Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 544
    Top = 40
  end
end
