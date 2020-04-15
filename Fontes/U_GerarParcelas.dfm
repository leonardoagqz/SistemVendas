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
    Left = 549
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
    DataSource = ds_parcelasprontas
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
        FieldName = 'parc_cod_carne'
        Title.Caption = 'Carn'#234
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parc_numero'
        Title.Caption = 'N'#186' Parc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parc_valor'
        Title.Caption = '$ Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parc_data_venc'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parc_pago'
        Title.Caption = 'Pago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parc_data_pago'
        Title.Caption = 'Data Pag'
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
      Width = 48
      Height = 13
      Caption = 'Parcelas'
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
      Caption = 'Listar Produtos'
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
    Width = 94
    Height = 25
    Caption = 'Gerar Parcelas'
    TabOrder = 9
    OnClick = btn_lancarParcelasClick
  end
  object edt_parcelasQtd: TDBCurrencyEdit
    Left = 555
    Top = 302
    Width = 46
    Height = 21
    Align = alCustom
    DisplayFormat = '0'
    TabOrder = 10
  end
  object btn_parcelasapagar: TBitBtn
    Left = 450
    Top = 377
    Width = 94
    Height = 25
    Caption = 'Cancelar Parcelas'
    TabOrder = 11
    OnClick = btn_parcelasapagarClick
  end
  object btn_parcelasimpimir: TBitBtn
    Left = 450
    Top = 408
    Width = 94
    Height = 25
    Caption = 'Imprimir Carn'#234
    TabOrder = 12
    OnClick = btn_parcelasimpimirClick
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
    Left = 56
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
    Left = 56
    Top = 184
  end
  object SQL_lanc: TFDQuery
    Connection = dm.conexao
    Left = 664
    Top = 456
  end
  object SQL_parcelasProntas: TFDQuery
    Active = True
    Connection = dm.conexao
    SQL.Strings = (
      'select * from view_parcelas_prontas'
      ''
      '  '
      ' '
      '')
    Left = 360
    Top = 312
    object SQL_parcelasProntasparc_id: TFDAutoIncField
      FieldName = 'parc_id'
      Origin = 'parc_id'
      ReadOnly = True
    end
    object SQL_parcelasProntasparc_cod_carne: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_cod_carne'
      Origin = 'parc_cod_carne'
      Size = 50
    end
    object SQL_parcelasProntasparc_numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parc_numero'
      Origin = 'parc_numero'
    end
    object SQL_parcelasProntasparc_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'parc_valor'
      Origin = 'parc_valor'
    end
    object SQL_parcelasProntasparc_data_venc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_data_venc'
      Origin = 'parc_data_venc'
    end
    object SQL_parcelasProntasparc_pago: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_pago'
      Origin = 'parc_pago'
      FixedChar = True
      Size = 3
    end
    object SQL_parcelasProntasparc_data_pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_data_pago'
      Origin = 'parc_data_pago'
    end
  end
  object ds_parcelasprontas: TDataSource
    DataSet = SQL_parcelasProntas
    Left = 360
    Top = 360
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
      ReadOnly = True
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
  object ppDBparcelasprontas: TppDBPipeline
    DataSource = ds_parcelasprontas
    UserName = 'DBparcelasprontas'
    Left = 432
    Top = 432
    object ppDBparcelasprontasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'parc_id'
      FieldName = 'parc_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDBparcelasprontasppField2: TppField
      FieldAlias = 'parc_cod_carne'
      FieldName = 'parc_cod_carne'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBparcelasprontasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'parc_numero'
      FieldName = 'parc_numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBparcelasprontasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'parc_valor'
      FieldName = 'parc_valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBparcelasprontasppField5: TppField
      FieldAlias = 'parc_data_venc'
      FieldName = 'parc_data_venc'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBparcelasprontasppField6: TppField
      FieldAlias = 'parc_pago'
      FieldName = 'parc_pago'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object ppDBparcelasprontasppField7: TppField
      FieldAlias = 'parc_data_pago'
      FieldName = 'parc_data_pago'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
  end
  object report_parcelasProntas: TppReport
    AutoStop = False
    DataPipeline = ppDBparcelasprontas
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
    PreviewFormSettings.WindowState = wsMinimized
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 512
    Top = 432
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBparcelasprontas'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1325
        mmTop = 51595
        mmWidth = 190754
        BandType = 4
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Style = bsClear
        mmHeight = 49213
        mmLeft = 1323
        mmTop = 529
        mmWidth = 57150
        BandType = 4
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Style = bsClear
        mmHeight = 49213
        mmLeft = 55563
        mmTop = 529
        mmWidth = 136525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 155575
        mmTop = 35719
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'parc_valor'
        DataPipeline = ppDBparcelasprontas
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 155575
        mmTop = 41010
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 60325
        mmTop = 35719
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'parc_numero'
        DataPipeline = ppDBparcelasprontas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 60325
        mmTop = 41010
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vencimento'
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
        mmTop = 35719
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'parc_data_venc'
        DataPipeline = ppDBparcelasprontas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 101600
        mmTop = 41275
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cod Carn'#234
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 153988
        mmTop = 4498
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'parc_cod_carne'
        DataPipeline = ppDBparcelasprontas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 153988
        mmTop = 10054
        mmWidth = 36248
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 13758
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'parc_numero'
        DataPipeline = ppDBparcelasprontas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 41010
        mmTop = 13758
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 26194
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'parc_valor'
        DataPipeline = ppDBparcelasprontas
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 33338
        mmTop = 26194
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 19844
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'parc_data_venc'
        DataPipeline = ppDBparcelasprontas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 29898
        mmTop = 19844
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cod Carn'#234
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 1588
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'parc_cod_carne'
        DataPipeline = ppDBparcelasprontas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBparcelasprontas'
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 7144
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 41010
        mmWidth = 49477
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Ass. Recebi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 16936
        mmTop = 42064
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbl_minhaLoja'
        Border.mmPadding = 0
        Caption = 'Minha Loja - (85) 3232-3232'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4762
        mmLeft = 61383
        mmTop = 4498
        mmWidth = 52388
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 61383
        mmTop = 17992
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object lbl_nomeCliente: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbl_nomeCliente'
        Border.mmPadding = 0
        Caption = 'lbl_nomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 76729
        mmTop = 17992
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 59002
        mmTop = 34131
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 99748
        mmTop = 34131
        mmWidth = 37571
        BandType = 4
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 152665
        mmTop = 34131
        mmWidth = 37571
        BandType = 4
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 152665
        mmTop = 3440
        mmWidth = 37571
        BandType = 4
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 8467
        mmLeft = 59002
        mmTop = 3440
        mmWidth = 78581
        BandType = 4
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 8467
        mmLeft = 59002
        mmTop = 16140
        mmWidth = 78581
        BandType = 4
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 10319
        mmLeft = 2383
        mmTop = 1588
        mmWidth = 51328
        BandType = 4
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 19050
        mmLeft = 2379
        mmTop = 13759
        mmWidth = 51329
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SQL_listarProdutos: TFDQuery
    Active = True
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
    Left = 592
    Top = 48
    object SQL_listarProdutosped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_listarProdutosped_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
    end
    object SQL_listarProdutosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object SQL_listarProdutosped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_listarProdutosped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_listarProdutosped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_listarProdutosped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      Size = 3
    end
    object SQL_listarProdutosped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      Size = 3
    end
    object SQL_listarProdutosped_subtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotal'
      Origin = 'ped_subtotal'
    end
    object SQL_listarProdutosped_subtotalprazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotalprazo'
      Origin = 'ped_subtotalprazo'
    end
    object SQL_listarProdutositen_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_id'
      Origin = 'iten_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutositen_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutositen_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutositen_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarProdutositen_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object SQL_listarProdutositen_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object SQL_listarProdutospro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutospro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutoscli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutoscli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarProdutoscli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarProdutoscli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutoscli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarProdutoscli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutosforma_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutosforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object SQL_listarProdutosuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarProdutosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarProdutosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object ds_listarProdutos: TDataSource
    DataSet = SQL_listarProdutos
    Left = 592
    Top = 104
  end
  object SQL_cancelaParcela: TFDQuery
    Connection = dm.conexao
    Left = 576
    Top = 360
  end
  object ppDBListarProdutos: TppDBPipeline
    DataSource = ds_listarProdutos
    UserName = 'DBListarProdutos'
    Left = 664
    Top = 64
    object ppDBListarProdutosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_id'
      FieldName = 'ped_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object ppDBListarProdutosppField2: TppField
      FieldAlias = 'ped_date'
      FieldName = 'ped_date'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBListarProdutosppField3: TppField
      FieldAlias = 'ped_codigo'
      FieldName = 'ped_codigo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBListarProdutosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_cliente'
      FieldName = 'ped_cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBListarProdutosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_usuario'
      FieldName = 'ped_usuario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBListarProdutosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_forma_pag'
      FieldName = 'ped_forma_pag'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBListarProdutosppField7: TppField
      FieldAlias = 'ped_fechado'
      FieldName = 'ped_fechado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppDBListarProdutosppField8: TppField
      FieldAlias = 'ped_faturado'
      FieldName = 'ped_faturado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object ppDBListarProdutosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_subtotal'
      FieldName = 'ped_subtotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBListarProdutosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_subtotalprazo'
      FieldName = 'ped_subtotalprazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDBListarProdutosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_id'
      FieldName = 'iten_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBListarProdutosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_produto'
      FieldName = 'iten_produto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBListarProdutosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_qtd'
      FieldName = 'iten_qtd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBListarProdutosppField14: TppField
      FieldAlias = 'iten_pedido'
      FieldName = 'iten_pedido'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDBListarProdutosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco'
      FieldName = 'iten_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDBListarProdutosppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco_prazo'
      FieldName = 'iten_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBListarProdutosppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_id'
      FieldName = 'pro_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBListarProdutosppField18: TppField
      FieldAlias = 'pro_nome'
      FieldName = 'pro_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 17
    end
    object ppDBListarProdutosppField19: TppField
      FieldAlias = 'pro_barra'
      FieldName = 'pro_barra'
      FieldLength = 100
      DisplayWidth = 100
      Position = 18
    end
    object ppDBListarProdutosppField20: TppField
      FieldAlias = 'pro_ref'
      FieldName = 'pro_ref'
      FieldLength = 100
      DisplayWidth = 100
      Position = 19
    end
    object ppDBListarProdutosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_custo'
      FieldName = 'pro_custo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDBListarProdutosppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco'
      FieldName = 'pro_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppDBListarProdutosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco_prazo'
      FieldName = 'pro_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppDBListarProdutosppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_estoque'
      FieldName = 'pro_estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBListarProdutosppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'cli_id'
      FieldName = 'cli_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBListarProdutosppField26: TppField
      FieldAlias = 'cli_nome'
      FieldName = 'cli_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 25
    end
    object ppDBListarProdutosppField27: TppField
      FieldAlias = 'cli_endereco'
      FieldName = 'cli_endereco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 26
    end
    object ppDBListarProdutosppField28: TppField
      FieldAlias = 'cli_numero'
      FieldName = 'cli_numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppDBListarProdutosppField29: TppField
      FieldAlias = 'cli_bairro'
      FieldName = 'cli_bairro'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppDBListarProdutosppField30: TppField
      FieldAlias = 'cli_cidade'
      FieldName = 'cli_cidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppDBListarProdutosppField31: TppField
      FieldAlias = 'cli_fone'
      FieldName = 'cli_fone'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppDBListarProdutosppField32: TppField
      FieldAlias = 'cli_celular'
      FieldName = 'cli_celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppDBListarProdutosppField33: TppField
      FieldAlias = 'cli_rg'
      FieldName = 'cli_rg'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object ppDBListarProdutosppField34: TppField
      FieldAlias = 'cli_cnpj_cpf'
      FieldName = 'cli_cnpj_cpf'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppDBListarProdutosppField35: TppField
      FieldAlias = 'cli_profissao'
      FieldName = 'cli_profissao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object ppDBListarProdutosppField36: TppField
      FieldAlias = 'cli_data_nasc'
      FieldName = 'cli_data_nasc'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 35
    end
    object ppDBListarProdutosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'forma_id'
      FieldName = 'forma_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppDBListarProdutosppField38: TppField
      FieldAlias = 'forma_nome'
      FieldName = 'forma_nome'
      FieldLength = 40
      DisplayWidth = 40
      Position = 37
    end
    object ppDBListarProdutosppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'user_id'
      FieldName = 'user_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppDBListarProdutosppField40: TppField
      FieldAlias = 'user_nome'
      FieldName = 'user_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 39
    end
    object ppDBListarProdutosppField41: TppField
      FieldAlias = 'user_nome_completo'
      FieldName = 'user_nome_completo'
      FieldLength = 100
      DisplayWidth = 100
      Position = 40
    end
    object ppDBListarProdutosppField42: TppField
      FieldAlias = 'user_senha'
      FieldName = 'user_senha'
      FieldLength = 100
      DisplayWidth = 100
      Position = 41
    end
  end
  object Report_ListagemProdutos: TppReport
    AutoStop = False
    DataPipeline = ppDBListarProdutos
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
    Left = 664
    Top = 120
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBListarProdutos'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 993
        mmTop = 34664
        mmWidth = 196609
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 792
        mmTop = 7938
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'cli_nome'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 14282
        mmTop = 9525
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'user_nome'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 18256
        mmTop = 15611
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'cli_endereco'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 64553
        mmTop = 9525
        mmWidth = 46038
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'cli_numero'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 5821
        mmLeft = 111649
        mmTop = 9525
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'cli_bairro'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 120694
        mmTop = 9525
        mmWidth = 16410
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'cli_cidade'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 137877
        mmTop = 9525
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1055
        mmTop = 29369
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'ped_date'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 59531
        mmTop = 15611
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'pro_nome'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 794
        mmTop = -3
        mmWidth = 36246
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'iten_preco'
        DataPipeline = ppDBListarProdutos
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 141817
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'iten_preco_prazo'
        DataPipeline = ppDBListarProdutos
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 166952
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'iten_qtd'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 125151
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'pro_barra'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 0
        mmWidth = 37571
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'pro_ref'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 83079
        mmTop = 0
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 794
        mmWidth = 196586
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'forma_nome'
        DataPipeline = ppDBListarProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 101597
        mmTop = 8731
        mmWidth = 29369
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'ped_subtotal'
        DataPipeline = ppDBListarProdutos
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 142610
        mmTop = 8731
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText39'
        Border.mmPadding = 0
        DataField = 'ped_subtotalprazo'
        DataPipeline = ppDBListarProdutos
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBListarProdutos'
        mmHeight = 4763
        mmLeft = 171974
        mmTop = 8731
        mmWidth = 21168
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
