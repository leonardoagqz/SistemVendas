unit U_lancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TF_lancamento = class(TForm)
    Panel1: TPanel;
    dbg_listarlancamentos: TDBGrid;
    SQL_listarancamentos: TFDQuery;
    ds_listarlancamentos: TDataSource;
    SQL_listarancamentosped_id: TIntegerField;
    SQL_listarancamentosped_date: TDateField;
    SQL_listarancamentosped_codigo: TStringField;
    SQL_listarancamentosped_cliente: TIntegerField;
    SQL_listarancamentosped_usuario: TIntegerField;
    SQL_listarancamentosped_forma_pag: TIntegerField;
    SQL_listarancamentosped_fechado: TStringField;
    SQL_listarancamentosped_faturado: TStringField;
    SQL_listarancamentositen_id: TIntegerField;
    SQL_listarancamentositen_produto: TIntegerField;
    SQL_listarancamentositen_qtd: TIntegerField;
    SQL_listarancamentositen_pedido: TStringField;
    SQL_listarancamentositen_preco: TFloatField;
    SQL_listarancamentositen_preco_prazo: TFloatField;
    SQL_listarancamentospro_id: TIntegerField;
    SQL_listarancamentospro_nome: TStringField;
    SQL_listarancamentospro_barra: TStringField;
    SQL_listarancamentospro_ref: TStringField;
    SQL_listarancamentospro_custo: TFloatField;
    SQL_listarancamentospro_preco: TFloatField;
    SQL_listarancamentospro_preco_prazo: TFloatField;
    SQL_listarancamentospro_estoque: TIntegerField;
    SQL_listarancamentoscli_id: TIntegerField;
    SQL_listarancamentoscli_nome: TStringField;
    SQL_listarancamentoscli_endereco: TStringField;
    SQL_listarancamentoscli_numero: TStringField;
    SQL_listarancamentoscli_bairro: TStringField;
    SQL_listarancamentoscli_cidade: TStringField;
    SQL_listarancamentoscli_fone: TStringField;
    SQL_listarancamentoscli_celular: TStringField;
    SQL_listarancamentoscli_rg: TStringField;
    SQL_listarancamentoscli_cnpj_cpf: TStringField;
    SQL_listarancamentoscli_profissao: TStringField;
    SQL_listarancamentoscli_data_nasc: TDateField;
    SQL_listarancamentosforma_id: TIntegerField;
    SQL_listarancamentosforma_nome: TStringField;
    SQL_listarancamentosuser_id: TIntegerField;
    SQL_listarancamentosuser_nome: TStringField;
    SQL_listarancamentosuser_nome_completo: TStringField;
    SQL_listarancamentosuser_senha: TStringField;
    SQL_listarancamentossubTotal: TFloatField;
    SQL_listarancamentossubTotalPrazo: TFloatField;
    edt_valorprazo_lancamento: TCurrencyEdit;
    edt_valoravista_lancamento: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    SQL_listarancamentosped_subtotal: TFloatField;
    SQL_listarancamentosped_subtotalprazo: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure procedureMostrarPedido;
    procedure dbg_listarlancamentosCellClick(Column: TColumn);

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
  total_vista := 0;
  total_prazo := 0;
  codigo_venda := SQL_listarancamentosped_codigo.AsString;

  //executo a sql listar lan�amentos para filtrar atual
  with SQL_listarancamentos do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos ');
   SQL.Add('where  ped_codigo = :codigo');
   ParamByName('codigo').Value := codigo_venda;
   Open;

   end;

   SQL_listarancamentos.First;

   while not SQL_listarancamentos.Eof do
   begin
     total_vista := total_vista + F_PDV.SQL_listar_pedidos_dbglan�amentosubTotal.Value;
     total_prazo := total_prazo + F_PDV.SQL_listar_pedidos_dbglan�amentosubTotalPrazo.Value;
     SQL_listarancamentos.Next;
   end;

   edt_valoravista_lancamento.Value := total_vista;
   edt_valorprazo_lancamento.Value := total_prazo;

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
