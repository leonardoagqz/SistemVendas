object F_vendasConsulta: TF_vendasConsulta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consultar Vendas'
  ClientHeight = 507
  ClientWidth = 727
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
  object btn_imprimerecibo: TSpeedButton
    Left = 601
    Top = 458
    Width = 109
    Height = 25
    Caption = 'Imprimir Selecionado'
    OnClick = btn_imprimereciboClick
  end
  object btn_listaritensdopedido_lanc: TSpeedButton
    Left = 672
    Top = 489
    Width = 33
    Height = 19
    Visible = False
    OnClick = btn_listaritensdopedido_lancClick
  end
  object lbl_formapaglanc: TLabel
    Left = 444
    Top = 485
    Width = 151
    Height = 19
    Caption = 'Forma de Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
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
    Width = 726
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
        Width = 72
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
  object dbg_listarItensPedido: TDBGrid
    Left = 0
    Top = 286
    Width = 726
    Height = 154
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
    Width = 726
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
    Width = 726
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
    Width = 727
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 718
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
    object Label1: TLabel
      Left = 443
      Top = 6
      Width = 20
      Height = 13
      Caption = 'De: '
    end
    object Label2: TLabel
      Left = 439
      Top = 27
      Width = 24
      Height = 13
      Caption = 'At'#233': '
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
    object dtp_data_inicio: TDateTimePicker
      Left = 464
      Top = 4
      Width = 97
      Height = 21
      Date = 43962.815610243060000000
      Time = 43962.815610243060000000
      TabOrder = 3
    end
    object dtp_data_fim: TDateTimePicker
      Left = 464
      Top = 25
      Width = 97
      Height = 21
      Date = 43962.817277673610000000
      Time = 43962.817277673610000000
      TabOrder = 4
    end
    object btn_buscardata: TBitBtn
      Left = 567
      Top = 25
      Width = 27
      Height = 24
      Caption = 'OK'
      TabOrder = 5
      OnClick = btn_buscardataClick
    end
  end
  object lk_formapaglanc: TRxDBLookupCombo
    Left = 477
    Top = 489
    Width = 153
    Height = 20
    DropDownCount = 8
    EmptyStrIsNull = False
    Enabled = False
    LookupField = 'forma_id'
    LookupDisplay = 'forma_nome'
    LookupSource = dm.ds_formapag
    TabOrder = 9
    Visible = False
  end
  object btn_fecharpedido: TBitBtn
    Left = 636
    Top = 489
    Width = 30
    Height = 17
    Caption = 'Fechar e Faturar'
    Enabled = False
    TabOrder = 10
    Visible = False
    OnClick = btn_fecharpedidoClick
  end
  object btn_gerarRelatorio: TBitBtn
    Left = 496
    Top = 458
    Width = 99
    Height = 25
    Caption = 'Imprimir Todos'
    TabOrder = 11
    OnClick = btn_gerarRelatorioClick
  end
  object edt_total_lancamento: TCurrencyEdit
    Left = 544
    Top = 259
    Width = 71
    Height = 18
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object edt_totalPrazo_lancamento: TCurrencyEdit
    Left = 636
    Top = 259
    Width = 71
    Height = 18
    Enabled = False
    TabOrder = 13
  end
  object SQL_ListarLancamentos: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      
        'select * from pedidos d, itens i, produtos p, clientes c, forma_' +
        'pagamento f, usuarios u '
      
        ' where c.cli_id = d.ped_cliente and i.iten_pedido = d.ped_codigo' +
        ' and d.ped_forma_pag = f.forma_id'
      '  and i.iten_produto = p.pro_id and d.ped_usuario = u.user_id '
      ' group by d.ped_codigo'
      ' order by ped_date desc'
      '')
    Left = 632
    Top = 96
    object SQL_ListarLancamentosped_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQL_ListarLancamentosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object SQL_ListarLancamentosped_date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
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
    Left = 632
    Top = 144
  end
  object SQL_lanc: TFDQuery
    Connection = dm.conexao
    Left = 680
    Top = 16
  end
  object SQL_listarlancamento_relat: TFDQuery
    OnCalcFields = SQL_listarlancamento_relatCalcFields
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
    Left = 536
    Top = 320
    object SQL_listarlancamento_relatped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_listarlancamento_relatped_date: TDateTimeField
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
    object SQL_listarlancamento_relatsubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotal'
      Calculated = True
    end
    object SQL_listarlancamento_relatsubTotalPrazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotalPrazo'
      Calculated = True
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
    Left = 536
    Top = 368
  end
  object TB_faturarpedido: TFDTable
    IndexFieldNames = 'ped_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'aguiarsvendasbd.pedidos'
    TableName = 'aguiarsvendasbd.pedidos'
    Left = 648
    Top = 65520
    object TB_faturarpedidoped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_faturarpedidoped_date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
    end
    object TB_faturarpedidoped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object TB_faturarpedidoped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object TB_faturarpedidoped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object TB_faturarpedidoped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object TB_faturarpedidoped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      Size = 3
    end
    object TB_faturarpedidoped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      Size = 3
    end
    object TB_faturarpedidoped_subtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotal'
      Origin = 'ped_subtotal'
    end
    object TB_faturarpedidoped_subtotalprazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotalprazo'
      Origin = 'ped_subtotalprazo'
    end
  end
  object ppDB_Recibo_Pedido: TppDBPipeline
    DataSource = ds_listarlancamento_relat
    UserName = 'DB_Recibo_Pedido'
    Left = 632
    Top = 416
  end
  object Report_reciboPedido: TppReport
    AutoStop = False
    DataPipeline = ppDB_Recibo_Pedido
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 672
    Top = 416
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_Recibo_Pedido'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Fone: (85) 3232-3232'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 147902
        mmTop = 2117
        mmWidth = 49477
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Minha  Loja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8467
        mmLeft = 1058
        mmTop = -529
        mmWidth = 37306
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 794
        mmTop = 29390
        mmWidth = 14552
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Valor R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 148961
        mmTop = 29379
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Prazo R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 175684
        mmTop = 29379
        mmWidth = 18256
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Qtd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 131766
        mmTop = 29390
        mmWidth = 6614
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 993
        mmTop = 34664
        mmWidth = 196609
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 792
        mmTop = 7938
        mmWidth = 196586
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 1053
        mmTop = 9260
        mmWidth = 12435
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'cli_nome'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 14282
        mmTop = 9525
        mmWidth = 30427
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 1058
        mmTop = 15610
        mmWidth = 16669
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'user_nome'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 18256
        mmTop = 15611
        mmWidth = 17463
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 46826
        mmTop = 9525
        mmWidth = 16404
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'cli_endereco'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 64553
        mmTop = 9525
        mmWidth = 46038
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'cli_numero'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 5821
        mmLeft = 111649
        mmTop = 9525
        mmWidth = 10319
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'cli_bairro'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 120694
        mmTop = 9525
        mmWidth = 16410
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'cli_cidade'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 137877
        mmTop = 9525
        mmWidth = 20638
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 38365
        mmTop = 15611
        mmWidth = 19579
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label48'
        Border.mmPadding = 0
        Caption = 'Cod. Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4762
        mmLeft = 39952
        mmTop = 29369
        mmWidth = 22490
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label49'
        Border.mmPadding = 0
        Caption = 'Ref. Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 83079
        mmTop = 29369
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1055
        mmTop = 29369
        mmWidth = 196586
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'ped_date'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 59531
        mmTop = 15611
        mmWidth = 32808
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'pro_nome'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 794
        mmTop = -3
        mmWidth = 36246
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'subTotal'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 144727
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'subTotalPrazo'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 167157
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'iten_qtd'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 125151
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'pro_barra'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 0
        mmWidth = 37571
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'pro_ref'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 83079
        mmTop = 0
        mmWidth = 39688
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 794
        mmWidth = 196586
        BandType = 7
        LayerName = BandLayer4
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Total a Vista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 141817
        mmTop = 2370
        mmWidth = 23019
        BandType = 7
        LayerName = BandLayer4
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'Total a Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 170657
        mmTop = 2370
        mmWidth = 24342
        BandType = 7
        LayerName = BandLayer4
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Foma Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 101600
        mmTop = 2381
        mmWidth = 38365
        BandType = 7
        LayerName = BandLayer4
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'forma_nome'
        DataPipeline = ppDB_Recibo_Pedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 101597
        mmTop = 8731
        mmWidth = 29369
        BandType = 7
        LayerName = BandLayer4
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'ped_subtotal'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 142610
        mmTop = 8731
        mmWidth = 24871
        BandType = 7
        LayerName = BandLayer4
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText39'
        Border.mmPadding = 0
        DataField = 'ped_subtotalprazo'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 171974
        mmTop = 8731
        mmWidth = 21168
        BandType = 7
        LayerName = BandLayer4
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDB_relatorioVendas: TppDBPipeline
    DataSource = ds_relatoriovendass
    UserName = 'DB_relatorioVendas'
    Left = 432
    Top = 448
  end
  object reportrelatorioVendas: TppReport
    AutoStop = False
    DataPipeline = ppDB_relatorioVendas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 472
    Top = 448
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_relatorioVendas'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 77523
        mmTop = 3175
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        Brush.Style = bsClear
        mmHeight = 4763
        mmLeft = 529
        mmTop = 3175
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        Border.mmPadding = 0
        DataField = 'pro_nome'
        DataPipeline = ppDB_relatorioVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 3438
        mmLeft = 1588
        mmTop = -6
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        Border.mmPadding = 0
        DataField = 'iten_preco'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = '$ #,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 3438
        mmLeft = 59531
        mmTop = -6
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        Border.mmPadding = 0
        DataField = 'iten_preco_prazo'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = '$ #,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 3438
        mmLeft = 79111
        mmTop = -6
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'iten_qtd'
        DataPipeline = ppDB_relatorioVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 3438
        mmLeft = 100019
        mmTop = -6
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'subTotal'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 3438
        mmLeft = 118013
        mmTop = -9
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'subTotalPrazo'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 3438
        mmLeft = 153467
        mmTop = -9
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ped_codigo'
      DataPipeline = ppDB_relatorioVendas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB_relatorioVendas'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 23813
        mmPrintPosition = 0
        object ppLabel40: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label40'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 1588
          mmTop = 5298
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText41: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText41'
          Border.mmPadding = 0
          DataField = 'ped_date'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 13229
          mmTop = 5298
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label50'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 38894
          mmTop = 5298
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText42: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText42'
          Border.mmPadding = 0
          DataField = 'ped_codigo'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 55033
          mmTop = 5298
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label51'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Forma Pag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 92346
          mmTop = 5298
          mmWidth = 23017
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText43: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText43'
          Border.mmPadding = 0
          DataField = 'forma_nome'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 114829
          mmTop = 5298
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label52'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 1588
          mmTop = 11116
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText44: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText44'
          Border.mmPadding = 0
          DataField = 'cli_nome'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 20638
          mmTop = 11116
          mmWidth = 76200
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label53'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 99219
          mmTop = 11113
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText49: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText49'
          Border.mmPadding = 0
          DataField = 'user_nome'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 121709
          mmTop = 11113
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label15'
          Border.mmPadding = 0
          Caption = 'Produto'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 19837
          mmWidth = 9789
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line15'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 1058
          mmTop = 18550
          mmWidth = 177910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label16'
          Border.mmPadding = 0
          Caption = '$ Vista'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 61913
          mmTop = 19837
          mmWidth = 8995
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label17'
          Border.mmPadding = 0
          Caption = '$ Prazo'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 81492
          mmTop = 19837
          mmWidth = 9789
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label18'
          Border.mmPadding = 0
          Caption = 'QTD'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 101071
          mmTop = 19837
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label19'
          Border.mmPadding = 0
          Caption = 'Sub Total vista'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 112448
          mmTop = 19837
          mmWidth = 18786
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label20'
          Border.mmPadding = 0
          Caption = 'Sub Total prazo'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 147902
          mmTop = 19837
          mmWidth = 20109
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppShape2: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape2'
          Brush.Style = bsClear
          mmHeight = 5556
          mmLeft = 1588
          mmTop = 5292
          mmWidth = 85196
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label21'
          Border.mmPadding = 0
          Caption = 
            '-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - ' +
            '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
            '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
            '- - - - - - - - -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3705
          mmLeft = 1055
          mmTop = 1323
          mmWidth = 193940
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line5'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3440
          mmLeft = 114829
          mmTop = 263
          mmWidth = 64029
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'subTotal'
          DataPipeline = ppDB_relatorioVendas
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4498
          mmLeft = 123296
          mmTop = 524
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataField = 'subTotalPrazo'
          DataPipeline = ppDB_relatorioVendas
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4498
          mmLeft = 161406
          mmTop = 524
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object SQL_relatoriovendass: TFDQuery
    OnCalcFields = SQL_relatoriovendassCalcFields
    Connection = dm.conexao
    SQL.Strings = (
      'select * from view_listar_pedidos'
      '')
    Left = 352
    Top = 448
    object SQL_relatoriovendassped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ReadOnly = True
    end
    object SQL_relatoriovendassped_date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
    end
    object SQL_relatoriovendassped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object SQL_relatoriovendassped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_relatoriovendassped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_relatoriovendassped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_relatoriovendassped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      Size = 3
    end
    object SQL_relatoriovendassped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      Size = 3
    end
    object SQL_relatoriovendassped_subtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotal'
      Origin = 'ped_subtotal'
    end
    object SQL_relatoriovendassped_subtotalprazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotalprazo'
      Origin = 'ped_subtotalprazo'
    end
    object SQL_relatoriovendassiten_id: TFDAutoIncField
      FieldName = 'iten_id'
      Origin = 'iten_id'
      ReadOnly = True
    end
    object SQL_relatoriovendassiten_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
    end
    object SQL_relatoriovendassiten_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
    end
    object SQL_relatoriovendassiten_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
      Size = 50
    end
    object SQL_relatoriovendassiten_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
    end
    object SQL_relatoriovendassiten_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
    end
    object SQL_relatoriovendasspro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ReadOnly = True
    end
    object SQL_relatoriovendasspro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_relatoriovendasspro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      Size = 100
    end
    object SQL_relatoriovendasspro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      Size = 100
    end
    object SQL_relatoriovendasspro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object SQL_relatoriovendasspro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object SQL_relatoriovendasspro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object SQL_relatoriovendasspro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
    object SQL_relatoriovendasscli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ReadOnly = True
    end
    object SQL_relatoriovendasscli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 100
    end
    object SQL_relatoriovendasscli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object SQL_relatoriovendasscli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object SQL_relatoriovendasscli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object SQL_relatoriovendasscli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object SQL_relatoriovendasscli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
    end
    object SQL_relatoriovendasscli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object SQL_relatoriovendasscli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object SQL_relatoriovendasscli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
    end
    object SQL_relatoriovendasscli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_relatoriovendasscli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object SQL_relatoriovendassforma_id: TFDAutoIncField
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ReadOnly = True
    end
    object SQL_relatoriovendassforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      Size = 40
    end
    object SQL_relatoriovendassuser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ReadOnly = True
    end
    object SQL_relatoriovendassuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 100
    end
    object SQL_relatoriovendassuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 100
    end
    object SQL_relatoriovendassuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 100
    end
    object SQL_relatoriovendasssubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotal'
      Calculated = True
    end
    object SQL_relatoriovendasssubTotalPrazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotalPrazo'
      Calculated = True
    end
  end
  object ds_relatoriovendass: TDataSource
    DataSet = SQL_relatoriovendass
    Left = 392
    Top = 448
  end
end
