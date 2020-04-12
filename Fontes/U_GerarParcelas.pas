unit U_GerarParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Buttons,
  RxLookup, RxDBCurrEdit;

type
  TF_gerarparcelas = class(TForm)
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
    SQL_parcelasProntas: TFDQuery;
    ds_parcelasprontas: TDataSource;
    dbg_listarParcelas: TDBGrid;
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
    TB_gerarParcelas: TFDTable;
    btn_imprimerecibo: TSpeedButton;
    btn_lancarParcelas: TBitBtn;
    edt_parcelasQtd: TDBCurrencyEdit;
    lbl_qtdparcelas: TLabel;
    btn_parcelasapagar: TBitBtn;
    btn_parcelasimpimir: TBitBtn;
    TB_gerarParcelasparc_id: TFDAutoIncField;
    TB_gerarParcelasparc_cod_carne: TStringField;
    TB_gerarParcelasparc_numero: TIntegerField;
    TB_gerarParcelasparc_valor: TFloatField;
    TB_gerarParcelasparc_data_venc: TDateField;
    TB_gerarParcelasparc_pago: TStringField;
    TB_gerarParcelasparc_data_pago: TDateField;
    SQL_parcelasProntasparc_id: TFDAutoIncField;
    SQL_parcelasProntasparc_cod_carne: TStringField;
    SQL_parcelasProntasparc_numero: TIntegerField;
    SQL_parcelasProntasparc_valor: TFloatField;
    SQL_parcelasProntasparc_data_venc: TDateField;
    SQL_parcelasProntasparc_pago: TStringField;
    SQL_parcelasProntasparc_data_pago: TDateField;
    SQL_parcelasProntascli_id: TFDAutoIncField;
    SQL_parcelasProntascli_nome: TStringField;
    SQL_parcelasProntascli_endereco: TStringField;
    SQL_parcelasProntascli_numero: TStringField;
    SQL_parcelasProntascli_bairro: TStringField;
    SQL_parcelasProntascli_cidade: TStringField;
    SQL_parcelasProntascli_fone: TStringField;
    SQL_parcelasProntascli_celular: TStringField;
    SQL_parcelasProntascli_rg: TStringField;
    SQL_parcelasProntascli_cnpj_cpf: TStringField;
    SQL_parcelasProntascli_profissao: TStringField;
    SQL_parcelasProntascli_data_nasc: TDateField;
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
    procedure btn_lancarParcelasClick(Sender: TObject);

  private
    { Private declarations }

  var total_vista, total_prazo : Double;
  var codigo_venda : string;

  public
    { Public declarations }
  end;

var
  F_gerarparcelas: TF_gerarparcelas;

implementation

uses
  u_DM, U_pdv;

{$R *.dfm}


procedure TF_gerarparcelas.procedureMostrarPedido;
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
   //btn_listaritensdopedido_lanc.Click;
end;

procedure TF_gerarparcelas.btn_imprimereciboClick(Sender: TObject);
begin
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar o pedido em lan�amentos para filtrar atual
 { with SQL_listarlancamento_relat do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;
  dm.Report_reciboPedidoLancamento.PrintReport; }
end;

procedure TF_gerarparcelas.btn_fecharpedidoClick(Sender: TObject);
begin

  {if lk_formapaglanc.Text = '' then
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
  SQL_ListarLancamentos.Open; }


end;

procedure TF_gerarparcelas.btn_lancarParcelasClick(Sender: TObject);
var total_parcelas, atual_parcela : Integer;
begin
   with SQL_parcelasProntas do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from view_parcelas_prontas');
       SQL.Add('where parc_cod_carne = :cod');
       ParamByName('cod').Value := codigo_venda;
       Open;
       begin
         if RecordCount > 0 then
         ShowMessage('Essa parcela j� foi gerada!');
         Exit;
       end;
     end;



  if edt_parcelasQtd.Value < 1 then
    begin
      ShowMessage('Digite a QTD de parcelas');
      edt_parcelasQtd.SetFocus;
      edt_parcelasQtd.Color := clYellow;
      Exit;
    end;

  total_parcelas := StrToInt(edt_parcelasQtd.Text);
  atual_parcela := 0;

  TB_gerarParcelas.Active := True;

  while atual_parcela < total_parcelas do
  begin
    atual_parcela := atual_parcela + 1;
    TB_gerarParcelas.Insert;
    TB_gerarParcelasparc_cod_carne.Value := SQL_ListarLancamentosped_codigo.Value;               {}
    TB_gerarParcelasparc_numero.Value := atual_parcela;
    TB_gerarParcelasparc_valor.Value := edt_valorprazo_lancamento.Value / total_parcelas;
    TB_gerarParcelasparc_data_venc.Value := IncMonth(Date,atual_parcela);{incrementa mes em mes, incrementa um mesm no date no meu parametro atual_parcela}
    TB_gerarParcelasparc_pago.Value := 'NAO';
    TB_gerarParcelas.Post;


  end;

  ShowMessage('Parcelas geradas com Sucesso!');

end;

procedure TF_gerarparcelas.btn_listaritensdopedido_lancClick(Sender: TObject);
begin
  
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lan�amentos para filtrar atual
  {with SQL_listarlancamento_relat do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;}


end;

procedure TF_gerarparcelas.btn_mostrarTodoslancClick(Sender: TObject);
begin
  SQL_ListarLancamentos.Close;
  SQL_ListarLancamentos.SQL.Clear;
  SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
  SQL_ListarLancamentos.SQL.Add('where ped_faturado = "SIM" and ped_forma_pag = 2 ');
  SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
  SQL_ListarLancamentos.Open;
  if SQL_ListarLancamentos.RecordCount = 0 then
    begin
      ShowMessage('N�o existem pedidos para serem faturados!');
    end;
end;

procedure TF_gerarparcelas.dbg_listarlancamentosCellClick(Column: TColumn);
begin
 procedureMostrarPedido;

end;

procedure TF_gerarparcelas.edt_buscarClientelancKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
     SQL_ListarLancamentos.Close;
     SQL_ListarLancamentos.SQL.Clear;
     SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
     SQL_ListarLancamentos.SQL.Add ('where cli_nome like :nome');
     SQL_ListarLancamentos.SQL.Add ('and ped_faturado = "SIM" and ped_forma_pag = 2');
     SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
     SQL_ListarLancamentos.ParamByName('nome').Value := edt_buscarClientelanc.Text + '%';
     SQL_ListarLancamentos.Open;
     if SQL_ListarLancamentos.RecordCount = 0 then
       begin
         ShowMessage('Cliente n�o Encontrado');
         SQL_ListarLancamentos.Close;
         SQL_ListarLancamentos.SQL.Clear;
         SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
         SQL_ListarLancamentos.SQL.Add ('where ped_faturado = "SIM" and ped_forma_pag = 2');
         SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
         SQL_ListarLancamentos.Open;

       end;
    end;
end;

procedure TF_gerarparcelas.edt_buscarCodVendalancKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
     SQL_ListarLancamentos.Close;
     SQL_ListarLancamentos.SQL.Clear;
     SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
     SQL_ListarLancamentos.SQL.Add ('where ped_codigo like :cod');
     SQL_ListarLancamentos.SQL.Add ('and ped_faturado = "SIM" and ped_forma_pag = 2');
     SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
     SQL_ListarLancamentos.ParamByName('cod').Value := edt_buscarCodVendalanc.Text + '%';
     SQL_ListarLancamentos.Open;
     if SQL_ListarLancamentos.RecordCount = 0 then
       begin
         ShowMessage('C�digo n�o Encontrado');
         SQL_ListarLancamentos.Close;
         SQL_ListarLancamentos.SQL.Clear;
         SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
         SQL_ListarLancamentos.SQL.Add ('where ped_faturado = "SIM" and ped_forma_pag = 2');
         SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
         SQL_ListarLancamentos.Open;

       end;
    end;
end;

procedure TF_gerarparcelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_gerarparcelas := nil;
end;

procedure TF_gerarparcelas.FormCreate(Sender: TObject);
begin
  dm.SQL_formapag.Active:=True;
end;

end.