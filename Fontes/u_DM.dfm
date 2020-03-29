object dm: Tdm
  OldCreateOrder = False
  Height = 377
  Width = 528
  object conexao: TFDConnection
    Params.Strings = (
      'Database=aguiarsvendasbd'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object Mysql_link: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    VendorLib = 
      'C:\Users\Public\Documents\Embarcadero\Studio\Projects\AdSites_SV' +
      'ENDAS\Fontes\libmysql.dll'
    Left = 104
    Top = 8
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 8
  end
  object SQL_produtos: TFDQuery
    IndexesActive = False
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 32
    Top = 64
    object SQL_produtospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_produtospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_produtospro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      Size = 100
    end
    object SQL_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      Size = 100
    end
    object SQL_produtospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_produtospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_produtospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
  object ds_produtos: TDataSource
    DataSet = SQL_produtos
    Left = 112
    Top = 64
  end
  object TB_produtos: TFDTable
    IndexFieldNames = 'pro_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'aguiarsvendasbd.produtos'
    TableName = 'aguiarsvendasbd.produtos'
    Left = 184
    Top = 64
    object TB_produtospro_id: TFDAutoIncField
      DisplayLabel = 'ID:'
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_produtospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object TB_produtospro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      Size = 100
    end
    object TB_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      Size = 100
    end
    object TB_produtospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object TB_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object TB_produtospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object TB_produtospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
  object SQL_clientes: TFDQuery
    IndexesActive = False
    Connection = conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 32
    Top = 120
    object SQL_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_clientescli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 100
    end
    object SQL_clientescli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object SQL_clientescli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object SQL_clientescli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object SQL_clientescli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object SQL_clientescli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      EditMask = '(99) 9999-9999;0;'
    end
    object SQL_clientescli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      EditMask = '(99) 9 9999-9999;0;'
    end
    object SQL_clientescli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object SQL_clientescli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
    end
    object SQL_clientescli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_clientescli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
  end
  object TB_clientes: TFDTable
    IndexFieldNames = 'cli_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'aguiarsvendasbd.clientes'
    TableName = 'aguiarsvendasbd.clientes'
    Left = 184
    Top = 120
    object TB_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_clientescli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 100
    end
    object TB_clientescli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object TB_clientescli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object TB_clientescli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object TB_clientescli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object TB_clientescli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      EditMask = '(99) 9999-9999;0; '
    end
    object TB_clientescli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      EditMask = '(99) 9 9999-9999;0;'
    end
    object TB_clientescli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object TB_clientescli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
      EditMask = '99999999999999;0;'
    end
    object TB_clientescli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object TB_clientescli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object ds_clientes: TDataSource
    DataSet = SQL_clientes
    Left = 112
    Top = 120
  end
  object ppDB_Recibo_Pedido: TppDBPipeline
    DataSource = F_PDV.ds_pedidos
    UserName = 'DB_Recibo_Pedido'
    Left = 32
    Top = 248
    object ppDB_Recibo_PedidoppField1: TppField
      FieldAlias = 'ped_id'
      FieldName = 'ped_id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB_Recibo_PedidoppField2: TppField
      FieldAlias = 'ped_date'
      FieldName = 'ped_date'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 1
    end
    object ppDB_Recibo_PedidoppField3: TppField
      FieldAlias = 'ped_codigo'
      FieldName = 'ped_codigo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDB_Recibo_PedidoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_cliente'
      FieldName = 'ped_cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDB_Recibo_PedidoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_usuario'
      FieldName = 'ped_usuario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDB_Recibo_PedidoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_forma_pag'
      FieldName = 'ped_forma_pag'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDB_Recibo_PedidoppField7: TppField
      FieldAlias = 'ped_fechado'
      FieldName = 'ped_fechado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppDB_Recibo_PedidoppField8: TppField
      FieldAlias = 'ped_faturado'
      FieldName = 'ped_faturado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object ppDB_Recibo_PedidoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_id'
      FieldName = 'pro_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDB_Recibo_PedidoppField10: TppField
      FieldAlias = 'pro_nome'
      FieldName = 'pro_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppDB_Recibo_PedidoppField11: TppField
      FieldAlias = 'pro_barra'
      FieldName = 'pro_barra'
      FieldLength = 100
      DisplayWidth = 100
      Position = 10
    end
    object ppDB_Recibo_PedidoppField12: TppField
      FieldAlias = 'pro_ref'
      FieldName = 'pro_ref'
      FieldLength = 100
      DisplayWidth = 100
      Position = 11
    end
    object ppDB_Recibo_PedidoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_custo'
      FieldName = 'pro_custo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDB_Recibo_PedidoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco'
      FieldName = 'pro_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDB_Recibo_PedidoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco_prazo'
      FieldName = 'pro_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDB_Recibo_PedidoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_estoque'
      FieldName = 'pro_estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDB_Recibo_PedidoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_id'
      FieldName = 'iten_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDB_Recibo_PedidoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_produto'
      FieldName = 'iten_produto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDB_Recibo_PedidoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_qtd'
      FieldName = 'iten_qtd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppDB_Recibo_PedidoppField20: TppField
      FieldAlias = 'iten_pedido'
      FieldName = 'iten_pedido'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppDB_Recibo_PedidoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco'
      FieldName = 'iten_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDB_Recibo_PedidoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco_prazo'
      FieldName = 'iten_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppDB_Recibo_PedidoppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'subTotal'
      FieldName = 'subTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppDB_Recibo_PedidoppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'subTotalPrazo'
      FieldName = 'subTotalPrazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
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
    Left = 144
    Top = 248
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_Recibo_Pedido'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppLabel2: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
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
        mmTop = 15875
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
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
        mmLeft = 76729
        mmTop = 15875
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
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
        mmLeft = 103452
        mmTop = 15875
        mmWidth = 18257
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
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
        mmLeft = 129911
        mmTop = 15875
        mmWidth = 6614
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 993
        mmTop = 20626
        mmWidth = 196609
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 792
        mmTop = 7938
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Sub Total R$ '
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
        mmLeft = 139965
        mmTop = 15875
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Sub Prazo R$ '
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
        mmLeft = 166423
        mmTop = 15875
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 11642
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
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
        mmWidth = 66940
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'iten_preco'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 69586
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'iten_preco_prazo'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 94721
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
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
        mmLeft = 123296
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'subTotal'
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
        mmLeft = 141288
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'subTotalPrazo'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4763
        mmLeft = 163248
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 794
        mmWidth = 196586
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
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
        mmLeft = 173042
        mmTop = 2370
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'subTotal'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4498
        mmLeft = 143419
        mmTop = 8720
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'subTotalPrazo'
        DataPipeline = ppDB_Recibo_Pedido
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_Recibo_Pedido'
        mmHeight = 4498
        mmLeft = 174635
        mmTop = 8720
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground
      end
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
  object SQL_formapag: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from forma_pagamento')
    Left = 32
    Top = 178
    object SQL_formapagforma_id: TFDAutoIncField
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_formapagforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      Size = 40
    end
  end
  object ds_formapag: TDataSource
    DataSet = SQL_formapag
    Left = 112
    Top = 179
  end
end
