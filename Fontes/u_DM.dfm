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
    Left = 48
    Top = 16
  end
  object Mysql_link: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    VendorLib = 
      'C:\Users\Public\Documents\Embarcadero\Studio\Projects\AdSites_SV' +
      'ENDAS\Fontes\libmysql.dll'
    Left = 104
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 168
    Top = 16
  end
  object SQL_produtos: TFDQuery
    IndexesActive = False
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 40
    Top = 104
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
    Left = 128
    Top = 104
  end
end
