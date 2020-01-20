object F_pdv_clientes_listar: TF_pdv_clientes_listar
  Left = 0
  Top = 0
  Caption = 'Pesquisar Clientes'
  ClientHeight = 328
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pn_pesquisar_cliente_alto: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 66
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 32
    ExplicitWidth = 514
    object pn_pesquisa_cli_alto: TPanel
      Left = 67
      Top = 7
      Width = 281
      Height = 53
      TabOrder = 0
      object lbl_pesquisa_cli: TLabel
        Left = 4
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Pesquisar Clientes'
      end
      object edt_pesquisar_cli_pdv: TEdit
        Left = 3
        Top = 22
        Width = 274
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
  end
  object dbg_pesquisar_cliente: TDBGrid
    Left = 0
    Top = 66
    Width = 407
    Height = 203
    DataSource = dm.ds_produtos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pro_nome'
        Title.Caption = 'Nome'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_preco'
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_preco_prazo'
        Title.Caption = 'Pre'#231'o a Prazo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_estoque'
        Title.Caption = 'Qtd Estoque'
        Visible = True
      end>
  end
  object pn_pesquisar_produto_baixo: TPanel
    Left = 0
    Top = 268
    Width = 407
    Height = 41
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 264
    ExplicitWidth = 399
    object btn_ok_pesquisa_cli: TSpeedButton
      Left = 343
      Top = 6
      Width = 57
      Height = 30
      Caption = 'Selecionar'
    end
  end
  object stb_clientes: TStatusBar
    Left = 0
    Top = 309
    Width = 407
    Height = 19
    Panels = <>
    ExplicitLeft = 24
    ExplicitTop = 375
    ExplicitWidth = 514
  end
end
