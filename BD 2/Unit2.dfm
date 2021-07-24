object Form2: TForm2
  Left = 0
  Top = 0
  Width = 347
  Height = 301
  Caption = 'Form2'
  Color = 14155735
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    331
    263)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 38
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 20
    Top = 64
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label4: TLabel
    Left = 23
    Top = 88
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label5: TLabel
    Left = 20
    Top = 112
    Width = 45
    Height = 13
    Caption = 'Dt. Nasc.'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 210
    Width = 313
    Height = 10
    Anchors = [akLeft, akBottom]
    Shape = bsBottomLine
  end
  object Label6: TLabel
    Left = 16
    Top = 234
    Width = 31
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 32
    Top = 160
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label8: TLabel
    Left = 52
    Top = 136
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object edCodigo: TEdit
    Left = 69
    Top = 13
    Width = 68
    Height = 21
    TabStop = False
    ParentColor = True
    ReadOnly = True
    TabOrder = 0
    Text = 'edCodigo'
    OnKeyPress = edNomeKeyPress
  end
  object edNome: TEdit
    Left = 69
    Top = 37
    Width = 244
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    OnKeyDown = edNomeKeyDown
    OnKeyPress = edNomeKeyPress
  end
  object edEndereco: TEdit
    Left = 69
    Top = 61
    Width = 244
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
    OnKeyPress = edNomeKeyPress
  end
  object meTelefone: TMaskEdit
    Left = 69
    Top = 85
    Width = 76
    Height = 21
    EditMask = '9999-9999;0;_'
    MaxLength = 9
    TabOrder = 3
    OnKeyPress = edNomeKeyPress
  end
  object meNascimento: TMaskEdit
    Left = 69
    Top = 109
    Width = 76
    Height = 21
    EditMask = '00/00/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnKeyPress = edNomeKeyPress
  end
  object btnGravar: TButton
    Left = 168
    Top = 226
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Gravar'
    TabOrder = 7
    OnClick = btnGravarClick
  end
  object btnCancelar: TButton
    Left = 248
    Top = 226
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = btnCancelarClick
  end
  object cbUF: TComboBox
    Left = 69
    Top = 134
    Width = 52
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbUFChange
    OnKeyPress = edNomeKeyPress
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object dblCidade: TDBLookupComboBox
    Left = 68
    Top = 158
    Width = 245
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = DataSource1
    TabOrder = 6
    OnKeyPress = edNomeKeyPress
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Params = <>
    Left = 256
    Top = 16
  end
  object zqcidade: TZQuery
    Connection = Form1.ZConnection1
    Params = <>
    Left = 256
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = zqcidade
    Left = 224
    Top = 56
  end
  object ZQuery2: TZQuery
    Connection = Form1.ZConnection1
    Params = <>
    Left = 264
    Top = 96
  end
end
