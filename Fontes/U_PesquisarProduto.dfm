object F_pdv_produtos_listar: TF_pdv_produtos_listar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisar Produto'
  ClientHeight = 338
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbg_pesquisar_produto: TDBGrid
    Left = 0
    Top = 65
    Width = 425
    Height = 217
    DataSource = dm.ds_produtos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg_pesquisar_produtoDblClick
    OnKeyDown = dbg_pesquisar_produtoKeyDown
    OnKeyPress = dbg_pesquisar_produtoKeyPress
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
  object pn_pesquisar_produto_alto: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 66
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object pn_pesquisa_pro_alto: TPanel
      Left = 67
      Top = 7
      Width = 281
      Height = 53
      TabOrder = 0
      object lbl_pesquisa_pro: TLabel
        Left = 4
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Pesquisar Produto'
      end
      object edt_pesquisar_pro_pdv: TEdit
        Left = 3
        Top = 22
        Width = 274
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = edt_pesquisar_pro_pdvKeyPress
      end
    end
  end
  object stb_produtos: TStatusBar
    Left = 0
    Top = 319
    Width = 417
    Height = 19
    Panels = <>
  end
  object pn_pesquisar_produto_baixo: TPanel
    Left = 0
    Top = 278
    Width = 417
    Height = 41
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
    object btn_ok_pesquisa_pro: TSpeedButton
      Left = 343
      Top = 6
      Width = 57
      Height = 30
      Caption = 'Selecionar'
      OnClick = btn_ok_pesquisa_proClick
    end
  end
end
