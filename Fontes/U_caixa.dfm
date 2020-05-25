object F_caixa: TF_caixa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa'
  ClientHeight = 343
  ClientWidth = 568
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
  object lbl_caixahoje: TLabel
    Left = 72
    Top = 101
    Width = 67
    Height = 13
    Caption = 'Caixa de Hoje'
  end
  object Label1: TLabel
    Left = 439
    Top = 13
    Width = 91
    Height = 13
    Caption = 'Digite o valor inicial'
  end
  object lblCaixa: TLabel
    Left = 24
    Top = 16
    Width = 48
    Height = 16
    Caption = 'lblCaixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgListarCaixa: TDBGrid
    Left = 72
    Top = 160
    Width = 409
    Height = 161
    DataSource = dm.ds_caixa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'caixa_valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_data_abre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_data_fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_usuario'
        Visible = True
      end>
  end
  object edt_CaixaHoje: TCurrencyEdit
    Left = 72
    Top = 120
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edtCaixaInicial: TCurrencyEdit
    Left = 439
    Top = 32
    Width = 91
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object btnAbreCaixa: TBitBtn
    Left = 455
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Abrir Caixa'
    TabOrder = 3
    OnClick = btnAbreCaixaClick
  end
  object TB_AbreCaixa: TFDTable
    IndexFieldNames = 'caixa_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'aguiarsvendasbd.caixa'
    TableName = 'aguiarsvendasbd.caixa'
    Left = 464
    Top = 112
    object TB_AbreCaixacaixa_id: TFDAutoIncField
      FieldName = 'caixa_id'
      Origin = 'caixa_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TB_AbreCaixacaixa_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_valor'
      Origin = 'caixa_valor'
    end
    object TB_AbreCaixacaixa_data_abre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_abre'
      Origin = 'caixa_data_abre'
    end
    object TB_AbreCaixacaixa_data_fecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_fecha'
      Origin = 'caixa_data_fecha'
    end
    object TB_AbreCaixacaixa_inicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_inicial'
      Origin = 'caixa_inicial'
    end
    object TB_AbreCaixacaixa_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_usuario'
      Origin = 'caixa_usuario'
    end
  end
end
