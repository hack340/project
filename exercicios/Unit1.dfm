object Form1: TForm1
  Left = 0
  Top = 0
  Width = 525
  Height = 335
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
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Campo'
  end
  object ListBox1: TListBox
    Left = 24
    Top = 40
    Width = 169
    Height = 177
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 120
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 264
    Width = 497
    Height = 17
    TabOrder = 3
  end
end
