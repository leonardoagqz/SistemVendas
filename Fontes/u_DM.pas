unit u_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter,
  ppProd, ppReport;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    Mysql_link: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    SQL_produtos: TFDQuery;
    SQL_produtospro_id: TFDAutoIncField;
    SQL_produtospro_nome: TStringField;
    SQL_produtospro_barra: TStringField;
    SQL_produtospro_ref: TStringField;
    SQL_produtospro_custo: TFloatField;
    SQL_produtospro_preco: TFloatField;
    SQL_produtospro_preco_prazo: TFloatField;
    SQL_produtospro_estoque: TIntegerField;
    ds_produtos: TDataSource;
    TB_produtos: TFDTable;
    TB_produtospro_id: TFDAutoIncField;
    TB_produtospro_nome: TStringField;
    TB_produtospro_barra: TStringField;
    TB_produtospro_ref: TStringField;
    TB_produtospro_custo: TFloatField;
    TB_produtospro_preco: TFloatField;
    TB_produtospro_preco_prazo: TFloatField;
    TB_produtospro_estoque: TIntegerField;
    SQL_clientes: TFDQuery;
    TB_clientes: TFDTable;
    ds_clientes: TDataSource;
    TB_clientescli_id: TFDAutoIncField;
    TB_clientescli_nome: TStringField;
    TB_clientescli_endereco: TStringField;
    TB_clientescli_numero: TStringField;
    TB_clientescli_bairro: TStringField;
    TB_clientescli_cidade: TStringField;
    TB_clientescli_fone: TStringField;
    TB_clientescli_celular: TStringField;
    TB_clientescli_rg: TStringField;
    TB_clientescli_cnpj_cpf: TStringField;
    TB_clientescli_profissao: TStringField;
    TB_clientescli_data_nasc: TDateField;
    SQL_clientescli_id: TFDAutoIncField;
    SQL_clientescli_nome: TStringField;
    SQL_clientescli_endereco: TStringField;
    SQL_clientescli_numero: TStringField;
    SQL_clientescli_bairro: TStringField;
    SQL_clientescli_cidade: TStringField;
    SQL_clientescli_fone: TStringField;
    SQL_clientescli_celular: TStringField;
    SQL_clientescli_rg: TStringField;
    SQL_clientescli_cnpj_cpf: TStringField;
    SQL_clientescli_profissao: TStringField;
    SQL_clientescli_data_nasc: TDateField;
    ppDB_Recibo_Pedido: TppDBPipeline;
    Report_reciboPedido: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    SQL_formapag: TFDQuery;
    ds_formapag: TDataSource;
    SQL_formapagforma_id: TFDAutoIncField;
    SQL_formapagforma_nome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses
  U_pdv;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
