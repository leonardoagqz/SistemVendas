object F_gerarparcelas: TF_gerarparcelas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Parcelamento'
  ClientHeight = 507
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_totalvistalanc: TLabel
    Left = 4
    Top = 454
    Width = 86
    Height = 19
    Caption = 'Total a vista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_totalprazolanc: TLabel
    Left = 140
    Top = 454
    Width = 93
    Height = 19
    Caption = 'Total a prazo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_qtdparcelas: TLabel
    Left = 544
    Top = 288
    Width = 64
    Height = 13
    Caption = 'QTD Parcelas'
  end
  object Panel1: TPanel
    Left = 0
    Top = 55
    Width = 718
    Height = 12
    Align = alCustom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 5
  end
  object dbg_listarlancamentos: TDBGrid
    Left = 0
    Top = 67
    Width = 718
    Height = 192
    Align = alCustom
    DataSource = ds_listarlancamentos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbg_listarlancamentosCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ped_date'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_codigo'
        Title.Caption = 'Pedido'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_nome'
        Title.Caption = 'Cliente'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forma_nome'
        Title.Caption = 'Pagamento'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_fechado'
        Title.Caption = 'Fechado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_faturado'
        Title.Caption = 'Faturado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_nome'
        Title.Caption = 'Vendedor'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_subtotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_subtotalprazo'
        Visible = True
      end>
  end
  object edt_valorprazo_lancamento: TCurrencyEdit
    Left = 140
    Top = 473
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edt_valoravista_lancamento: TCurrencyEdit
    Left = 4
    Top = 473
    Width = 121
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dbg_listarParcelas: TDBGrid
    Left = -1
    Top = 286
    Width = 445
    Height = 155
    DataSource = ds_listarlancamento_relat
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pro_nome'
        Title.Caption = 'Produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iten_qtd'
        Title.Caption = 'QTD'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iten_preco'
        Title.Caption = 'Pre'#231'o Vista'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iten_preco_prazo'
        Title.Caption = 'Pre'#231'o Prazo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forma_nome'
        Title.Caption = 'Forma Pagamento'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_ref'
        Title.Caption = 'Ref. Prod'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_barra'
        Title.Caption = 'C'#243'digo de Barras Prod'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_codigo'
        Title.Caption = 'C'#243'digo Pedido'
        Width = 100
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 274
    Width = 718
    Height = 13
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 6
    object Label3: TLabel
      Left = 1
      Top = 0
      Width = 88
      Height = 13
      Caption = 'Itens do Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 258
    Width = 718
    Height = 13
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 7
  end
  object Panel4: TPanel
    Left = 0
    Top = 439
    Width = 718
    Height = 13
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 8
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 49
    Align = alTop
    TabOrder = 0
    object lbl_buscarclientelanc: TLabel
      Left = 14
      Top = 7
      Width = 87
      Height = 13
      Caption = 'Buscar por Cliente'
    end
    object lbl_buscarcodvendalanc: TLabel
      Left = 213
      Top = 7
      Width = 91
      Height = 13
      Caption = 'Buscar Cod. Venda'
    end
    object btn_imprimerecibo: TSpeedButton
      Left = 599
      Top = 17
      Width = 106
      Height = 25
      Caption = 'Imprimir Selecionado'
      OnClick = btn_imprimereciboClick
    end
    object edt_buscarClientelanc: TEdit
      Left = 11
      Top = 21
      Width = 184
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edt_buscarClientelancKeyPress
    end
    object edt_buscarCodVendalanc: TEdit
      Left = 208
      Top = 21
      Width = 122
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edt_buscarCodVendalancKeyPress
    end
    object btn_mostrarTodoslanc: TBitBtn
      Left = 352
      Top = 17
      Width = 77
      Height = 25
      Caption = 'Mostrar Todos'
      TabOrder = 2
      OnClick = btn_mostrarTodoslancClick
    end
  end
  object btn_lancarParcelas: TBitBtn
    Left = 450
    Top = 296
    Width = 87
    Height = 25
    Caption = 'Gerar Parcelas'
    TabOrder = 9
    OnClick = btn_lancarParcelasClick
  end
  object edt_parcelasQtd: TDBCurrencyEdit
    Left = 550
    Top = 300
    Width = 46
    Height = 21
    Align = alCustom
    DisplayFormat = '0'
    TabOrder = 10
  end
  object btn_parcelasapagar: TBitBtn
    Left = 450
    Top = 377
    Width = 87
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 11
  end
  object btn_parcelasimpimir: TBitBtn
    Left = 450
    Top = 408
    Width = 87
    Height = 25
    Caption = 'Imprimir Carn'#234
    TabOrder = 12
  end
  object SQL_ListarLancamentos: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      
        'select * from pedidos d, itens i, produtos p, clientes c, forma_' +
        'pagamento f, usuarios u '
      
        ' where c.cli_id = d.ped_cliente and i.iten_pedido = d.ped_codigo' +
        ' and d.ped_forma_pag = f.forma_id'
      '  and i.iten_produto = p.pro_id and d.ped_usuario = u.user_id'
      ' group by d.ped_codigo'
      ' order by ped_date desc'
      '')
    Left = 544
    Top = 136
    object SQL_ListarLancamentosped_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQL_ListarLancamentosped_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
    end
    object SQL_ListarLancamentosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object SQL_ListarLancamentosped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_ListarLancamentosped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_ListarLancamentosped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_ListarLancamentosped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      Size = 3
    end
    object SQL_ListarLancamentosped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      Size = 3
    end
    object SQL_ListarLancamentositen_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_id'
      Origin = 'iten_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentositen_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentositen_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentositen_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_ListarLancamentositen_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentositen_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentospro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentospro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentoscli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentoscli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_ListarLancamentoscli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_ListarLancamentoscli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentoscli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_ListarLancamentoscli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentosforma_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentosforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object SQL_ListarLancamentosuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ListarLancamentosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_ListarLancamentosped_subtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotal'
      Origin = 'ped_subtotal'
      DisplayFormat = '0.00'
    end
    object SQL_ListarLancamentosped_subtotalprazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotalprazo'
      Origin = 'ped_subtotalprazo'
      DisplayFormat = '0.00'
    end
  end
  object ds_listarlancamentos: TDataSource
    DataSet = SQL_ListarLancamentos
    Left = 664
    Top = 128
  end
  object SQL_lanc: TFDQuery
    Connection = dm.conexao
    Left = 576
    Top = 456
  end
  object SQL_listarlancamento_relat: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      
        'select * from pedidos d, itens i, produtos p, clientes c, forma_' +
        'pagamento f, usuarios u '
      
        ' where c.cli_id = d.ped_cliente and i.iten_pedido = d.ped_codigo' +
        ' and d.ped_forma_pag = f.forma_id'
      '  and i.iten_produto = p.pro_id and d.ped_usuario = u.user_id'
      '  '
      ' '
      '')
    Left = 672
    Top = 304
    object SQL_listarlancamento_relatped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_listarlancamento_relatped_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
    end
    object SQL_listarlancamento_relatped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object SQL_listarlancamento_relatped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_listarlancamento_relatped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_listarlancamento_relatped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_listarlancamento_relatped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      Size = 3
    end
    object SQL_listarlancamento_relatped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      Size = 3
    end
    object SQL_listarlancamento_relatped_subtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotal'
      Origin = 'ped_subtotal'
    end
    object SQL_listarlancamento_relatped_subtotalprazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotalprazo'
      Origin = 'ped_subtotalprazo'
    end
    object SQL_listarlancamento_relatiten_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_id'
      Origin = 'iten_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatiten_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatiten_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatiten_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarlancamento_relatiten_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object SQL_listarlancamento_relatiten_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object SQL_listarlancamento_relatpro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatpro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatpro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatpro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatpro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatpro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatpro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatpro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatcli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatcli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarlancamento_relatcli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarlancamento_relatcli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatcli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarlancamento_relatcli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatforma_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object SQL_listarlancamento_relatuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarlancamento_relatuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarlancamento_relatuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object ds_listarlancamento_relat: TDataSource
    DataSet = SQL_listarlancamento_relat
    Left = 672
    Top = 368
  end
  object TB_gerarParcelas: TFDTable
    IndexFieldNames = 'parc_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'parcelas'
    TableName = 'parcelas'
    Left = 504
    object TB_gerarParcelasparc_id: TFDAutoIncField
      FieldName = 'parc_id'
      Origin = 'parc_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TB_gerarParcelasparc_cod_carne: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_cod_carne'
      Origin = 'parc_cod_carne'
      Size = 50
    end
    object TB_gerarParcelasparc_numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parc_numero'
      Origin = 'parc_numero'
    end
    object TB_gerarParcelasparc_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'parc_valor'
      Origin = 'parc_valor'
    end
    object TB_gerarParcelasparc_data_venc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_data_venc'
      Origin = 'parc_data_venc'
    end
    object TB_gerarParcelasparc_pago: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_pago'
      Origin = 'parc_pago'
      FixedChar = True
      Size = 3
    end
    object TB_gerarParcelasparc_data_pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_data_pago'
      Origin = 'parc_data_pago'
    end
  end
end
