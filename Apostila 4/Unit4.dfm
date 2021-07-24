object Form4: TForm4
  Left = 0
  Top = 0
  Width = 301
  Height = 274
  Caption = 'Form4'
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
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Edit1: TEdit
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 2
    OnClick = Button1Click
  end
end
