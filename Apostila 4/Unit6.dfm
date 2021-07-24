object Form6: TForm6
  Left = 0
  Top = 0
  Width = 475
  Height = 229
  Caption = 'Form6'
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
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Distancia'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 71
    Height = 13
    Caption = 'M'#233'dia por Litro'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 67
    Height = 13
    Caption = 'Valor por Litro'
  end
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 88
    Top = 112
    Width = 89
    Height = 25
    Caption = 'Calcular Gasto'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit4: TEdit
    Left = 16
    Top = 152
    Width = 425
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
end
