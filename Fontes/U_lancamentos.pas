unit U_lancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Buttons;

type
  TF_lancamento = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    SQL_ListarLancamentosped_subtotal: TFloatField;
    SQL_ListarLancamentosped_subtotalprazo: TFloatField;
    SQL_lanc: TFDQuery;
    SpeedButton1: TSpeedButton;
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
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure procedureMostrarPedido;
    procedure dbg_listarlancamentosCellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_listaritensdopedido_lancClick(Sender: TObject);

  private
    { Private declarations }

  var total_vista, total_prazo : Double;
  var codigo_venda : string;

  public
    { Public declarations }
  end;

var
  F_lancamento: TF_lancamento;

implementation

uses
  u_DM, U_pdv;

{$R *.dfm}


procedure TF_lancamento.procedureMostrarPedido;
begin
  //mostrar pedido selecionado
  {total_vista := 0;
  total_prazo := 0;}
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lançamentos para filtrar atual
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
     total_vista := total_vista + F_PDV.SQL_listar_pedidos_dbglançamentosubTotal.Value;
     total_prazo := total_prazo + F_PDV.SQL_listar_pedidos_dbglançamentosubTotalPrazo.Value;
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

procedure TF_lancamento.SpeedButton1Click(Sender: TObject);
begin
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar o pedido em lançamentos para filtrar atual
  with SQL_listarlancamento_relat do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;
  dm.Report_reciboPedidoLancamento.PrintReport;
end;

procedure TF_lancamento.btn_listaritensdopedido_lancClick(Sender: TObject);
begin
  
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lançamentos para filtrar atual
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

procedure TF_lancamento.dbg_listarlancamentosCellClick(Column: TColumn);
begin
 procedureMostrarPedido;

end;

procedure TF_lancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_lancamento := nil;
end;

end.
