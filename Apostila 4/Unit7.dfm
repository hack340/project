object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 318
  ClientWidth = 371
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
    Left = 8
    Top = 40
    Width = 47
    Height = 13
    Caption = 'Produtos:'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Pre'#231'o:'
  end
  object Label4: TLabel
    Left = 8
    Top = 104
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      '1001'
      '1324'
      '6548'
      '0987'
      '7623'
      '8050')
  end
  object Button1: TButton
    Left = 240
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 72
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 8
    Top = 128
    Width = 169
    Height = 145
    TabOrder = 5
  end
  object Button2: TButton
    Left = 160
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Zerar Lista'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Memo2: TMemo
    Left = 184
    Top = 128
    Width = 86
    Height = 145
    TabOrder = 9
  end
  object Memo3: TMemo
    Left = 272
    Top = 128
    Width = 86
    Height = 145
    TabOrder = 10
  end
end
