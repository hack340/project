object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 260
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 21
    Width = 136
    Height = 13
    Caption = 'Cole o link no campo abaixo:'
  end
  object Label2: TLabel
    Left = 24
    Top = 109
    Width = 154
    Height = 13
    Caption = 'Seu link invertido / desinvertido:'
  end
  object Edit1: TEdit
    Left = 24
    Top = 40
    Width = 793
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 128
    Width = 793
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 569
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button2Click
  end
end
