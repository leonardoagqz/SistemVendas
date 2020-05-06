unit U_vendasConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Buttons,
  RxLookup, ppDB, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TF_vendasConsulta = class(TForm)
    Panel1: TPanel;
    dbg_listarlancamentos: TDBGrid;
    SQL_ListarLancamentos: TFDQuery;
    ds_listarlancamentos: TDataSource;
    SQL_ListarLancamentosped_id: TIntegerField;
    SQL_ListarLancamentosped_date: TDateField;
    SQL_ListarLancamentosped_codigo: TStringField;
    SQL_ListarLancamentosped_cliente: TIntegerField;
    SQL_ListarLancamentosped_usuario: TIntegerField;
    SQL_ListarLancamentosped_forma_pag: TIntegerField;
    SQL_ListarLancamentosped_fechado: TStringField;
    SQL_ListarLancamentosped_faturado: TStringField;
    SQL_ListarLancamentositen_id: TIntegerField;
    SQL_ListarLancamentositen_produto: TIntegerField;
    SQL_ListarLancamentositen_qtd: TIntegerField;
    SQL_ListarLancamentositen_pedido: TStringField;
    SQL_ListarLancamentositen_preco: TFloatField;
    SQL_ListarLancamentositen_preco_prazo: TFloatField;
    SQL_ListarLancamentospro_id: TIntegerField;
    SQL_ListarLancamentospro_nome: TStringField;
    SQL_ListarLancamentospro_barra: TStringField;
    SQL_ListarLancamentospro_ref: TStringField;
    SQL_ListarLancamentospro_custo: TFloatField;
    SQL_ListarLancamentospro_preco: TFloatField;
    SQL_ListarLancamentospro_preco_prazo: TFloatField;
    SQL_ListarLancamentospro_estoque: TIntegerField;
    SQL_ListarLancamentoscli_id: TIntegerField;
    SQL_ListarLancamentoscli_nome: TStringField;
    SQL_ListarLancamentoscli_endereco: TStringField;
    SQL_ListarLancamentoscli_numero: TStringField;
    SQL_ListarLancamentoscli_bairro: TStringField;
    SQL_ListarLancamentoscli_cidade: TStringField;
    SQL_ListarLancamentoscli_fone: TStringField;
    SQL_ListarLancamentoscli_celular: TStringField;
    SQL_ListarLancamentoscli_rg: TStringField;
    SQL_ListarLancamentoscli_cnpj_cpf: TStringField;
    SQL_ListarLancamentoscli_profissao: TStringField;
    SQL_ListarLancamentoscli_data_nasc: TDateField;
    SQL_ListarLancamentosforma_id: TIntegerField;
    SQL_ListarLancamentosforma_nome: TStringField;
    SQL_ListarLancamentosuser_id: TIntegerField;
    SQL_ListarLancamentosuser_nome: TStringField;
    SQL_ListarLancamentosuser_nome_completo: TStringField;
    SQL_ListarLancamentosuser_senha: TStringField;
    edt_valorprazo_lancamento: TCurrencyEdit;
    edt_valoravista_lancamento: TCurrencyEdit;
    lbl_totalvistalanc: TLabel;
    lbl_totalprazolanc: TLabel;
    SQL_ListarLancamentosped_subtotal: TFloatField;
    SQL_ListarLancamentosped_subtotalprazo: TFloatField;
    SQL_lanc: TFDQuery;
    btn_imprimerecibo: TSpeedButton;
    SQL_listarlancamento_relat: TFDQuery;
    ds_listarlancamento_relat: TDataSource;
    SQL_listarlancamento_relatped_id: TFDAutoIncField;
    SQL_listarlancamento_relatped_date: TDateField;
    SQL_listarlancamento_relatped_codigo: TStringField;
    SQL_listarlancamento_relatped_cliente: TIntegerField;
    SQL_listarlancamento_relatped_usuario: TIntegerField;
    SQL_listarlancamento_relatped_forma_pag: TIntegerField;
    SQL_listarlancamento_relatped_fechado: TStringField;
    SQL_listarlancamento_relatped_faturado: TStringField;
    SQL_listarlancamento_relatped_subtotal: TFloatField;
    SQL_listarlancamento_relatped_subtotalprazo: TFloatField;
    SQL_listarlancamento_relatiten_id: TIntegerField;
    SQL_listarlancamento_relatiten_produto: TIntegerField;
    SQL_listarlancamento_relatiten_qtd: TIntegerField;
    SQL_listarlancamento_relatiten_pedido: TStringField;
    SQL_listarlancamento_relatiten_preco: TFloatField;
    SQL_listarlancamento_relatiten_preco_prazo: TFloatField;
    SQL_listarlancamento_relatpro_id: TIntegerField;
    SQL_listarlancamento_relatpro_nome: TStringField;
    SQL_listarlancamento_relatpro_barra: TStringField;
    SQL_listarlancamento_relatpro_ref: TStringField;
    SQL_listarlancamento_relatpro_custo: TFloatField;
    SQL_listarlancamento_relatpro_preco: TFloatField;
    SQL_listarlancamento_relatpro_preco_prazo: TFloatField;
    SQL_listarlancamento_relatpro_estoque: TIntegerField;
    SQL_listarlancamento_relatcli_id: TIntegerField;
    SQL_listarlancamento_relatcli_nome: TStringField;
    SQL_listarlancamento_relatcli_endereco: TStringField;
    SQL_listarlancamento_relatcli_numero: TStringField;
    SQL_listarlancamento_relatcli_bairro: TStringField;
    SQL_listarlancamento_relatcli_cidade: TStringField;
    SQL_listarlancamento_relatcli_fone: TStringField;
    SQL_listarlancamento_relatcli_celular: TStringField;
    SQL_listarlancamento_relatcli_rg: TStringField;
    SQL_listarlancamento_relatcli_cnpj_cpf: TStringField;
    SQL_listarlancamento_relatcli_profissao: TStringField;
    SQL_listarlancamento_relatcli_data_nasc: TDateField;
    SQL_listarlancamento_relatforma_id: TIntegerField;
    SQL_listarlancamento_relatforma_nome: TStringField;
    SQL_listarlancamento_relatuser_id: TIntegerField;
    SQL_listarlancamento_relatuser_nome: TStringField;
    SQL_listarlancamento_relatuser_nome_completo: TStringField;
    SQL_listarlancamento_relatuser_senha: TStringField;
    btn_listaritensdopedido_lanc: TSpeedButton;
    dbg_listarItensPedido: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    edt_buscarClientelanc: TEdit;
    edt_buscarCodVendalanc: TEdit;
    lbl_buscarclientelanc: TLabel;
    lbl_buscarcodvendalanc: TLabel;
    btn_mostrarTodoslanc: TBitBtn;
    lk_formapaglanc: TRxDBLookupCombo;
    lbl_formapaglanc: TLabel;
    btn_fecharpedido: TBitBtn;
    TB_faturarpedido: TFDTable;
    TB_faturarpedidoped_id: TFDAutoIncField;
    TB_faturarpedidoped_date: TDateField;
    TB_faturarpedidoped_codigo: TStringField;
    TB_faturarpedidoped_cliente: TIntegerField;
    TB_faturarpedidoped_usuario: TIntegerField;
    TB_faturarpedidoped_forma_pag: TIntegerField;
    TB_faturarpedidoped_fechado: TStringField;
    TB_faturarpedidoped_faturado: TStringField;
    TB_faturarpedidoped_subtotal: TFloatField;
    TB_faturarpedidoped_subtotalprazo: TFloatField;
    btn_gerarRelatorio: TBitBtn;
    ppDB_Recibo_Pedido: TppDBPipeline;
    Report_reciboPedido: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppDBText7: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel30: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDB_relatorioVendas: TppDBPipeline;
    reportrelatorioVendas: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel39: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText45: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine15: TppLine;
    ppFooterBand4: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel40: TppLabel;
    ppDBText41: TppDBText;
    ppLabel50: TppLabel;
    ppDBText42: TppDBText;
    ppLabel51: TppLabel;
    ppDBText43: TppDBText;
    ppLabel52: TppLabel;
    ppDBText44: TppDBText;
    ppLine14: TppLine;
    ppLabel53: TppLabel;
    ppDBText49: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    SQL_relatoriovendass: TFDQuery;
    SQL_relatoriovendassped_id: TFDAutoIncField;
    SQL_relatoriovendassped_date: TDateField;
    SQL_relatoriovendassped_codigo: TStringField;
    SQL_relatoriovendassped_cliente: TIntegerField;
    SQL_relatoriovendassped_usuario: TIntegerField;
    SQL_relatoriovendassped_forma_pag: TIntegerField;
    SQL_relatoriovendassped_fechado: TStringField;
    SQL_relatoriovendassped_faturado: TStringField;
    SQL_relatoriovendassped_subtotal: TFloatField;
    SQL_relatoriovendassped_subtotalprazo: TFloatField;
    SQL_relatoriovendassiten_id: TFDAutoIncField;
    SQL_relatoriovendassiten_produto: TIntegerField;
    SQL_relatoriovendassiten_qtd: TIntegerField;
    SQL_relatoriovendassiten_pedido: TStringField;
    SQL_relatoriovendassiten_preco: TFloatField;
    SQL_relatoriovendassiten_preco_prazo: TFloatField;
    SQL_relatoriovendasspro_id: TFDAutoIncField;
    SQL_relatoriovendasspro_nome: TStringField;
    SQL_relatoriovendasspro_barra: TStringField;
    SQL_relatoriovendasspro_ref: TStringField;
    SQL_relatoriovendasspro_custo: TFloatField;
    SQL_relatoriovendasspro_preco: TFloatField;
    SQL_relatoriovendasspro_preco_prazo: TFloatField;
    SQL_relatoriovendasspro_estoque: TIntegerField;
    SQL_relatoriovendasscli_id: TFDAutoIncField;
    SQL_relatoriovendasscli_nome: TStringField;
    SQL_relatoriovendasscli_endereco: TStringField;
    SQL_relatoriovendasscli_numero: TStringField;
    SQL_relatoriovendasscli_bairro: TStringField;
    SQL_relatoriovendasscli_cidade: TStringField;
    SQL_relatoriovendasscli_fone: TStringField;
    SQL_relatoriovendasscli_celular: TStringField;
    SQL_relatoriovendasscli_rg: TStringField;
    SQL_relatoriovendasscli_cnpj_cpf: TStringField;
    SQL_relatoriovendasscli_profissao: TStringField;
    SQL_relatoriovendasscli_data_nasc: TDateField;
    SQL_relatoriovendassforma_id: TFDAutoIncField;
    SQL_relatoriovendassforma_nome: TStringField;
    SQL_relatoriovendassuser_id: TFDAutoIncField;
    SQL_relatoriovendassuser_nome: TStringField;
    SQL_relatoriovendassuser_nome_completo: TStringField;
    SQL_relatoriovendassuser_senha: TStringField;
    SQL_relatoriovendasssubTotal: TFloatField;
    SQL_relatoriovendasssubTotalPrazo: TFloatField;
    ds_relatoriovendass: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure procedureMostrarPedido;
    procedure dbg_listarlancamentosCellClick(Column: TColumn);
    procedure btn_imprimereciboClick(Sender: TObject);
    procedure btn_listaritensdopedido_lancClick(Sender: TObject);
    procedure edt_buscarClientelancKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscarCodVendalancKeyPress(Sender: TObject; var Key: Char);
    procedure btn_mostrarTodoslancClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_fecharpedidoClick(Sender: TObject);
    procedure btn_gerarRelatorioClick(Sender: TObject);
    procedure SQL_relatoriovendassCalcFields(DataSet: TDataSet);

  private
    { Private declarations }

  var total_vista, total_prazo : Double;
  var codigo_venda : string;

  public
    { Public declarations }
  end;

var
  F_vendasConsulta: TF_vendasConsulta;

implementation

uses
  u_DM, U_pdv;

{$R *.dfm}


procedure TF_vendasConsulta.procedureMostrarPedido;
begin
  //mostrar pedido selecionado
  {total_vista := 0;
  total_prazo := 0;}
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lan�amentos para filtrar atual
  with SQL_lanc do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   SQL.Add('group by ped_codigo');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;

   {SQL_listarancamentos.First;

   while not SQL_listarancamentos.Eof do
   begin
     total_vista := total_vista + F_PDV.SQL_listar_pedidos_dbglan�amentosubTotal.Value;
     total_prazo := total_prazo + F_PDV.SQL_listar_pedidos_dbglan�amentosubTotalPrazo.Value;
     SQL_listarancamentos.Next;
   end; }

   edt_valoravista_lancamento.Value := SQL_ListarLancamentosped_subtotal.Value;
   edt_valorprazo_lancamento.Value := SQL_ListarLancamentosped_subtotalprazo.Value;

  {  with SQL_listarancamentos do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos ');
   Open;


   end;}
   btn_listaritensdopedido_lanc.Click;
end;

procedure TF_vendasConsulta.SQL_relatoriovendassCalcFields(DataSet: TDataSet);
begin
  // soma do subtotal
  SQL_relatoriovendasssubTotal.Value :=
  SQL_relatoriovendassiten_preco.Value * SQL_relatoriovendassiten_qtd.Value;

  // soma do subtotalprazo

   SQL_relatoriovendasssubTotalPrazo.Value :=
  SQL_relatoriovendassiten_preco_prazo.Value * SQL_relatoriovendassiten_qtd.Value;
end;

procedure TF_vendasConsulta.btn_gerarRelatorioClick(Sender: TObject);
begin
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar o pedido em lan�amentos para filtrar atual
  with SQL_listarlancamento_relat do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;

  reportrelatorioVendas.PrintReport;
end;

procedure TF_vendasConsulta.btn_imprimereciboClick(Sender: TObject);
begin
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar o pedido em lan�amentos para filtrar atual
  with SQL_listarlancamento_relat do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;
    Report_reciboPedido.PrintReport;
end;

procedure TF_vendasConsulta.btn_fecharpedidoClick(Sender: TObject);
begin
  if lk_formapaglanc.Text = '' then
    begin
      ShowMessage('Escolha a forma de Pagamento');
      lk_formapaglanc.SetFocus;
      Exit
    end;

  if SQL_ListarLancamentosped_faturado.Value = 'SIM' then
    begin
      ShowMessage('Pedido j� esta Faturado.');
    end;


  TB_faturarpedido.Active := True;
  TB_faturarpedido.Locate('ped_codigo',SQL_ListarLancamentosped_codigo.AsString);
  TB_faturarpedido.Edit;
  TB_faturarpedidoped_forma_pag.Value := dm.SQL_formapagforma_id.Value;
  TB_faturarpedidoped_faturado.Value := 'SIM';
  TB_faturarpedido.Post;

  ShowMessage('Pedido faturado com Sucesso!');

  btn_imprimerecibo.Click;

  SQL_ListarLancamentos.Close;
  SQL_ListarLancamentos.Open;


end;

procedure TF_vendasConsulta.btn_listaritensdopedido_lancClick(Sender: TObject);
begin
  
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lan�amentos para filtrar atual
  with SQL_listarlancamento_relat do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;


end;

procedure TF_vendasConsulta.btn_mostrarTodoslancClick(Sender: TObject);
begin
  SQL_ListarLancamentos.Close;
  SQL_ListarLancamentos.SQL.Clear;
  SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
  SQL_ListarLancamentos.SQL.Add('where ped_faturado = "SIM"');
  SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
  SQL_ListarLancamentos.Open;
  if SQL_ListarLancamentos.RecordCount = 0 then
    begin
      ShowMessage('N�o existem pedidos!');
    end;

  //sql que gera o relat�rio

  SQL_relatoriovendass.Close;
  SQL_relatoriovendass.SQL.Clear;
  SQL_relatoriovendass.SQL.Add ('select * from view_listar_pedidos');
  SQL_relatoriovendass.SQL.Add('where ped_faturado = "SIM"');
  SQL_relatoriovendass.Open;


end;

procedure TF_vendasConsulta.dbg_listarlancamentosCellClick(Column: TColumn);
begin
 procedureMostrarPedido;

end;

procedure TF_vendasConsulta.edt_buscarClientelancKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
     SQL_ListarLancamentos.Close;
     SQL_ListarLancamentos.SQL.Clear;
     SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
     SQL_ListarLancamentos.SQL.Add ('where cli_nome like :nome');
     SQL_ListarLancamentos.SQL.Add ('and ped_faturado = "SIM"');
     SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
     SQL_ListarLancamentos.ParamByName('nome').Value := edt_buscarClientelanc.Text + '%';
     SQL_ListarLancamentos.Open;
     if SQL_ListarLancamentos.RecordCount = 0 then
       begin
         ShowMessage('Cliente n�o Encontrado');
         SQL_ListarLancamentos.Close;
         SQL_ListarLancamentos.SQL.Clear;
         SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
         SQL_ListarLancamentos.SQL.Add ('where ped_faturado = "SIM"');
         SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
         SQL_ListarLancamentos.Open;

       end;
    end;
end;

procedure TF_vendasConsulta.edt_buscarCodVendalancKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
     SQL_ListarLancamentos.Close;
     SQL_ListarLancamentos.SQL.Clear;
     SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
     SQL_ListarLancamentos.SQL.Add ('where ped_codigo like :cod');
     SQL_ListarLancamentos.SQL.Add ('and ped_faturado = "SIM"');
     SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
     SQL_ListarLancamentos.ParamByName('cod').Value := edt_buscarCodVendalanc.Text + '%';
     SQL_ListarLancamentos.Open;
     if SQL_ListarLancamentos.RecordCount = 0 then
       begin
         ShowMessage('C�digo n�o Encontrado');
         SQL_ListarLancamentos.Close;
         SQL_ListarLancamentos.SQL.Clear;
         SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
         SQL_ListarLancamentos.SQL.Add ('where ped_faturado = "SIM"');
         SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
         SQL_ListarLancamentos.Open;

       end;
    end;
end;

procedure TF_vendasConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_vendasConsulta := nil;
end;

procedure TF_vendasConsulta.FormCreate(Sender: TObject);
begin
  dm.SQL_formapag.Active:=True;
end;

end.
