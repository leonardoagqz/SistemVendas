object F_pdv_clientes_listar: TF_pdv_clientes_listar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisar Clientes'
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
  object pn_pesquisar_cliente_alto: TPanel
    Left = 0
    Top = 0
    Width = 417
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
        OnChange = edt_pesquisar_cli_pdvChange
      end
    end
  end
  object dbg_pesquisar_cliente: TDBGrid
    Left = 0
    Top = 69
    Width = 417
    Height = 212
    DataSource = dm.ds_clientes
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg_pesquisar_clienteDblClick
    OnKeyPress = dbg_pesquisar_clienteKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'cli_nome'
        Title.Caption = 'Nome'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_rg'
        Title.Caption = 'RG'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_cnpj_cpf'
        Title.Caption = 'CNPJ / CPF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_endereco'
        Title.Caption = 'Endere'#231'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_numero'
        Title.Caption = 'N'#250'mero'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_bairro'
        Title.Caption = 'Bairro'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_cidade'
        Title.Caption = 'Cidade'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_fone'
        Title.Caption = 'Fone'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_celular'
        Title.Caption = 'Celular'
        Width = 90
        Visible = True
      end>
  end
  object pn_pesquisar_produto_baixo: TPanel
    Left = 0
    Top = 278
    Width = 417
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
      OnClick = btn_ok_pesquisa_cliClick
    end
  end
  object stb_clientes: TStatusBar
    Left = 0
    Top = 319
    Width = 417
    Height = 19
    Panels = <>
    ExplicitLeft = 24
    ExplicitTop = 375
    ExplicitWidth = 514
  end
end
