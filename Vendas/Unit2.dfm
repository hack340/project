object F_produtos: TF_produtos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 505
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object stBar2: TStatusBar
    Left = 0
    Top = 486
    Width = 834
    Height = 19
    Panels = <>
    ExplicitTop = 434
    ExplicitWidth = 765
  end
  object pagecon_produtos: TPageControl
    Left = 0
    Top = 0
    Width = 834
    Height = 486
    ActivePage = Consultar
    Align = alClient
    TabOrder = 1
    TabWidth = 150
    ExplicitWidth = 765
    ExplicitHeight = 434
    object Consultar: TTabSheet
      Caption = 'Consultar'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 757
      ExplicitHeight = 403
      object lbl1: TLabel
        Left = 3
        Top = 42
        Width = 118
        Height = 16
        Caption = 'Digite para localizar:'
      end
      object dbgrd1: TDBGrid
        Left = 0
        Top = 88
        Width = 826
        Height = 367
        Align = alBottom
        DataSource = dm.ds_listarProdutos
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_id'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_nome'
            Title.Caption = 'Nome do Produto'
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_barra'
            Title.Caption = 'C'#243'digo de Barras'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_custo'
            Title.Caption = 'Pre'#231'o de Custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco'
            Title.Caption = 'Pre'#231'o de Venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_estoque'
            Title.Caption = 'Saldo Estoque'
            Visible = True
          end>
      end
      object txt_busca: TEdit
        Left = 127
        Top = 37
        Width = 281
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txt_buscaKeyPress
      end
    end
    object pagecon_cadastrar: TTabSheet
      Caption = 'Cadastrar / Editar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 757
      ExplicitHeight = 403
    end
  end
end
