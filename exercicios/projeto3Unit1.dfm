object Form1: TForm1
  Left = 0
  Top = 0
  Width = 745
  Height = 250
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
    Left = 328
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor X'
  end
  object Label2: TLabel
    Left = 528
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor Y'
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
    Left = 160
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 24
    Top = 48
    Width = 169
    Height = 153
    ItemHeight = 13
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 328
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 528
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 448
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 5
    OnClick = Button2Click
  end
end
