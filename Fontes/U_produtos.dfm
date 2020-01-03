object F_produtos: TF_produtos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 384
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object stb_produtos: TStatusBar
    Left = 0
    Top = 365
    Width = 906
    Height = 19
    Panels = <>
    ExplicitWidth = 704
  end
  object page_produtos: TPageControl
    Left = 0
    Top = 0
    Width = 906
    Height = 365
    ActivePage = tab_consultar
    Align = alClient
    TabOrder = 1
    TabWidth = 200
    ExplicitLeft = 32
    ExplicitTop = 16
    ExplicitWidth = 641
    ExplicitHeight = 193
    object tab_consultar: TTabSheet
      Caption = 'Consultar'
      ExplicitWidth = 633
      ExplicitHeight = 165
      object dbg_produtos: TDBGrid
        Left = 0
        Top = 80
        Width = 898
        Height = 257
        Align = alBottom
        DataSource = dm.ds_produtos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_id'
            Title.Caption = 'ID'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_nome'
            Title.Caption = 'Produto'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_barra'
            Title.Caption = 'Barras'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_ref'
            Title.Caption = 'Ref'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_custo'
            Title.Caption = 'R$ Custo'
            Title.Color = clRed
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco'
            Title.Caption = 'R$ Pre'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 1539124
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco_prazo'
            Title.Caption = 'R$ Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clHotLight
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_estoque'
            Title.Caption = 'Qtd Estoque'
            Visible = True
          end>
      end
    end
    object tab_cadastrar: TTabSheet
      Caption = 'Cadastrar / Editar'
      ImageIndex = 1
      ExplicitWidth = 633
      ExplicitHeight = 165
    end
  end
end
