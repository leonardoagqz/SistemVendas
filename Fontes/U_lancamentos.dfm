object F_lancamento: TF_lancamento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Fatura e Lan'#231'amento'
  ClientHeight = 455
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 322
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
  object Label2: TLabel
    Left = 144
    Top = 322
    Width = 102
    Height = 19
    Caption = 'Totoal a prazo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 40
    ExplicitWidth = 185
  end
  object dbg_listarlancamentos: TDBGrid
    Left = 0
    Top = 41
    Width = 696
    Height = 192
    Align = alTop
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
    Left = 144
    Top = 341
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edt_valoravista_lancamento: TCurrencyEdit
    Left = 8
    Top = 341
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object SQL_listarancamentos: TFDQuery
    Active = True
    Connection = dm.conexao
    SQL.Strings = (
      
        'select * from pedidos d, itens i, produtos p, clientes c, forma_' +
        'pagamento f, usuarios u '
      
        ' where c.cli_id = d.ped_cliente and i.iten_pedido = d.ped_codigo' +
        ' and d.ped_forma_pag = f.forma_id'
      '  and i.iten_produto = p.pro_id and d.ped_usuario = u.user_id'
      ' group by d.ped_codigo')
    Left = 584
    Top = 272
    object SQL_listarancamentosped_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQL_listarancamentosped_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_date'
      Origin = 'ped_date'
    end
    object SQL_listarancamentosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
      Size = 50
    end
    object SQL_listarancamentosped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_listarancamentosped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_listarancamentosped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_listarancamentosped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      Size = 3
    end
    object SQL_listarancamentosped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      Size = 3
    end
    object SQL_listarancamentositen_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_id'
      Origin = 'iten_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentositen_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentositen_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentositen_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarancamentositen_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentositen_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentospro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentospro_barra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barra'
      Origin = 'pro_barra'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentoscli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentoscli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarancamentoscli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarancamentoscli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_cnpj_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj_cpf'
      Origin = 'cli_cnpj_cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentoscli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_listarancamentoscli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentosforma_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentosforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object SQL_listarancamentosuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_listarancamentosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentossubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotal'
      DisplayFormat = ',0.00;-,0.00'
      Calculated = True
    end
    object SQL_listarancamentossubTotalPrazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotalPrazo'
      DisplayFormat = ',0.00;-,0.00'
      Calculated = True
    end
    object SQL_listarancamentosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_listarancamentosped_subtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotal'
      Origin = 'ped_subtotal'
    end
    object SQL_listarancamentosped_subtotalprazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_subtotalprazo'
      Origin = 'ped_subtotalprazo'
    end
  end
  object ds_listarlancamentos: TDataSource
    DataSet = SQL_listarancamentos
    Left = 600
    Top = 368
  end
end
