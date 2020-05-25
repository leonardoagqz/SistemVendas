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
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_caixahoje: TLabel
    Left = 352
    Top = 93
    Width = 67
    Height = 13
    Caption = 'Caixa de Hoje'
  end
  object dbgListarCaixa: TDBGrid
    Left = 72
    Top = 160
    Width = 409
    Height = 161
    DataSource = dm.ds_caixa
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
    Left = 352
    Top = 112
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
end
