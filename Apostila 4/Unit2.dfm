object Form2: TForm2
  Left = 0
  Top = 0
  Width = 206
  Height = 307
  Caption = 'Form2'
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
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Edit1: TEdit
    Left = 40
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 40
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Cacular'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 40
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
