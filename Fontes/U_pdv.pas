unit U_pdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_PDV = class(TForm)
    stb_pdv: TStatusBar;
    pn_pdv_baixo: TPanel;
    dbg_lan�amento_pdv: TDBGrid;
    edt_pro_barras_pdv: TEdit;
    edt_pro_nome_pdv: TEdit;
    edt_pro_preco_pdv: TCurrencyEdit;
    edt_pro_prazo_pdv: TCurrencyEdit;
    edt_pro_qtd_pdv: TCurrencyEdit;
    btn_pro_iten_add_pdv: TSpeedButton;
    edt_total_pdv: TCurrencyEdit;
    edt_total_prazo_pdv: TCurrencyEdit;
    lbl_total_pn_baixo_pdv: TLabel;
    ldb_total_prazol_pn_baixo_pdv: TLabel;
    btn_impressao_pdv: TSpeedButton;
    btn_venda_fechar_pdv: TSpeedButton;
    btn_venda_gravar_pdv: TSpeedButton;
    btn_venda_cancelar_pdv: TSpeedButton;
    btn_pro_iten_remove_pdv: TSpeedButton;
    edt_cli_codigo_pdv: TEdit;
    edt_cli_nome_pdv: TEdit;
    lbl_buscarporbarras_pdv: TLabel;
    lbl_buscar_clientes_pdv: TLabel;
    lbl_qtd_pdv: TLabel;
    lbl_buscarpornome_pdv: TLabel;
    btn_iniciar_venda_pdv: TSpeedButton;
    btn_venda_sair_pdv: TSpeedButton;
    pn_btns_iconis_pdv: TPanel;
    pn_principal: TPanel;
    pn_buscar_clientes: TPanel;
    pn_buscar_barras_nome_pdv: TPanel;
    pn_btn_iniciar_venda_pdv: TPanel;
    pn_btns_grv_can_fec_vendas_pdv: TPanel;
    DBGrid1: TDBGrid;
    lbl_cod_cliente: TLabel;
    lbl_cpf_cnpj_cli_pdv: TLabel;
    lbl_cel_cli_pdv: TLabel;
    lbl_resut_cpf_cnpj_cli_pdv: TLabel;
    lbl_result_cel_cli_pdv: TLabel;
    lbl_end_cli_pdv: TLabel;
    lbl_result_end_cli_pdv: TLabel;
    lbl_qtd_estoq_pro_pdv: TLabel;
    lbl_result_qtd_estoque_prod_pdv: TLabel;
    lbl_total_pro_pdv: TLabel;
    lbl_total_prazo_pro_pdv: TLabel;
    SQL_verifica_venda: TFDQuery;
    TB_pedidos: TFDTable;
    ds_pedidos: TDataSource;
    TB_pedidosped_id: TFDAutoIncField;
    TB_pedidosped_date: TDateField;
    TB_pedidosped_codigo: TStringField;
    TB_pedidosped_cliente: TIntegerField;
    TB_pedidosped_usuario: TIntegerField;
    TB_pedidosped_forma_pag: TIntegerField;
    TB_pedidosped_fechado: TStringField;
    TB_pedidosped_faturado: TStringField;
    SQL_itens_add: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_venda_sair_pdvClick(Sender: TObject);
    procedure edt_cli_codigo_pdvKeyPress(Sender: TObject; var Key: Char);
    procedure edt_pro_barras_pdvKeyPress(Sender: TObject; var Key: Char);
    procedure edt_pro_nome_pdvKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cli_nome_pdvKeyPress(Sender: TObject; var Key: Char);
    procedure ProcedureBuscaProduto;
    procedure ProcedureBloqueiacampos;
    procedure ProcedureDesbloqueiaCampos;
    procedure ProcedureIniciaVenda;
    procedure ProcedureProdutosAdd;
    procedure edt_pro_nome_pdvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_pro_barras_pdvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cli_nome_pdvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cli_codigo_pdvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cli_codigo_pdvChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_iniciar_venda_pdvClick(Sender: TObject);
    procedure edt_cli_nome_pdvChange(Sender: TObject);
    procedure edt_pro_qtd_pdvKeyPress(Sender: TObject; var Key: Char);
    procedure btn_pro_iten_add_pdvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  codigo_venda : string;
  end;

var
  F_PDV: TF_PDV;

implementation

uses
  U_clientes, u_DM, U_PesquisarProduto, U_funcoes, U_PesquisarCliente;

{$R *.dfm}

procedure TF_PDV.ProcedureProdutosAdd;
var produto, qtd :Integer;
var preco, preco_prazo :Double;
begin
    produto     := dm.SQL_produtospro_id.Value;
    qtd         := StrToInt(edt_pro_qtd_pdv.Text);
    preco       := dm.SQL_produtospro_preco.Value;
    preco_prazo := dm.SQL_produtospro_preco_prazo.Value;
    with SQL_itens_add do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select * from itens');
        SQL.Add('where iten_produto = :produto');
        SQL.Add('and iten_pedido = :pedido');
        ParamByName('produto').Value  := produto;
        ParamByName('pedido').Value   := codigo_venda;
        Open;

        if SQL_itens_add.RecordCount > 0 then
        begin

        end

            else
            begin
                 with SQL_itens_add do
                  begin
                      Close;
                      SQL.Clear;
                      SQL.Add('insert into itens ');
                      SQL.Add('(iten_produto, iten_qtd, iten_pedido, iten_preco, iten_preco_prazo)');
                      SQL.Add('values( :produto,:qtd,:pedido,:preco, :preco_prazo)');
                      //SQL.Add('where iten_produto = produto');
                      ParamByName('produto').Value := produto;
                      ParamByName('qtd').Value := qtd;
                      ParamByName('pedido').Value :=  codigo_venda;
                      ParamByName('preco').Value := preco;
                      ParamByName('preco_prazo').Value :=  preco_prazo;
                      ExecSQL;
                  end;
            end;

    end;


end;
procedure TF_PDV.ProcedureIniciaVenda;
begin
   ProcedureDesbloqueiaCampos;
   if codigo_venda = '' then
   begin
   codigo_venda := FormatDateTime('yymmdd', Date) + FormatDateTime('hhmmss', Time);
   end;

   F_PDV.Caption := 'Pedido '+ codigo_venda;
   with SQL_verifica_venda do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from pedidos');
   SQL.Add('where ped_codigo = :codigo');
   ParamByName('codigo').Value := codigo_venda;
   Open;

   end;

   if SQL_verifica_venda.RecordCount = 0 then
   begin
      TB_pedidos.Active := True;
      TB_pedidos.Append;
      TB_pedidosped_date.Value := Date;
      TB_pedidosped_codigo.AsString := codigo_venda;
      TB_pedidosped_cliente.Value := dm.SQL_clientescli_id.Value;
      TB_pedidosped_usuario.Value := 1;
      TB_pedidosped_fechado.AsString := 'NAO';
      TB_pedidosped_faturado.AsString:= 'NAO';
      TB_pedidos.Post;
   end;


end;
procedure TF_PDV.ProcedureBloqueiacampos;
begin
   btn_iniciar_venda_pdv.Visible:= False;
   edt_pro_nome_pdv.Visible:=False;
   edt_pro_barras_pdv.Visible:=false;
   edt_pro_qtd_pdv.Visible:=False;
   dbg_lan�amento_pdv.Visible:=False;
   pn_btns_grv_can_fec_vendas_pdv.Visible:=False;
   btn_pro_iten_add_pdv.Visible:=False;
   btn_pro_iten_remove_pdv.Visible:=false;
   edt_cli_codigo_pdv.Visible:=False;
end;

 procedure TF_PDV.ProcedureDesbloqueiaCampos;
begin
   edt_cli_codigo_pdv.Visible:=True;
   edt_cli_nome_pdv.Visible:=True;
   edt_pro_nome_pdv.Visible:=True;
   edt_pro_barras_pdv.Visible:=True;
   edt_pro_qtd_pdv.Visible:=True;
   dbg_lan�amento_pdv.Visible:=True;
   pn_btns_grv_can_fec_vendas_pdv.Visible:=True;
   btn_pro_iten_add_pdv.Visible:=True;
   btn_pro_iten_remove_pdv.Visible:=True
end;

procedure TF_PDV.ProcedureBuscaProduto;
begin
    if Length(edt_pro_barras_pdv.Text) = 13 then
    with dm.SQL_produtos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from produtos');
      SQL.Add('where pro_barra = :barra');
      ParamByName('barra').Value := edt_pro_barras_pdv.Text;
      Open;
      begin


          begin
              if RecordCount = 0 then
               ShowMessage('Produto n�o encontrado!');
               edt_pro_barras_pdv.Clear;
          end;

          begin
            if RecordCount = 1 then
            edt_pro_barras_pdv.Text := dm.SQL_produtospro_barra.AsString;
            edt_pro_nome_pdv.Text := dm.SQL_produtospro_nome.AsString;
            lbl_result_qtd_estoque_prod_pdv.Caption := dm.SQL_produtospro_estoque.AsString;
          end;

         end;
    end;


end;

procedure TF_PDV.edt_cli_codigo_pdvChange(Sender: TObject);
begin
   if edt_cli_codigo_pdv.Text <> ' ' then
   btn_iniciar_venda_pdv.Visible := true;
  edt_cli_codigo_pdv.SelectAll;
end;

procedure TF_PDV.edt_cli_codigo_pdvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
      VK_F2:
          begin
            F_pdv_clientes_listar := TF_pdv_clientes_listar.Create(self);
            F_pdv_clientes_listar.ShowModal;

          end;

      end;
end;

procedure TF_PDV.edt_cli_codigo_pdvKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    with dm.SQL_clientes do
      begin

        Close;
        SQL.Clear;
        SQL.Add('select * from clientes');
        SQL.Add('where cli_id = :id');
        ParamByName('id').Value:= edt_cli_codigo_pdv.Text;
        Open;
             begin

                  begin
                     if RecordCount = 0 then
                    ShowMessage('Cliente n�o encontrato!');
                    edt_cli_codigo_pdv.Clear;
                    edt_cli_nome_pdv.Clear;

                  end;

                 begin
                   if RecordCount = 1 then
                   edt_cli_codigo_pdv.Text := dm.SQL_clientescli_id.AsString;
                   edt_cli_nome_pdv.Text := dm.SQL_clientescli_nome.AsString;
                   lbl_resut_cpf_cnpj_cli_pdv.Caption := dm.SQL_clientescli_cnpj_cpf.AsString;
                   lbl_result_cel_cli_pdv.Caption := dm.SQL_clientescli_celular.AsString;
                   lbl_result_end_cli_pdv.Caption := dm.SQL_clientescli_endereco.AsString +'  N� '+ dm.SQL_clientescli_numero.AsString + ' '+ dm.SQL_clientescli_bairro.AsString;
                   edt_cli_codigo_pdv.SelectAll;
                 end

             end;





      end;
end;

procedure TF_PDV.edt_cli_nome_pdvChange(Sender: TObject);
begin
     if edt_cli_nome_pdv.Text <> ' ' then
   btn_iniciar_venda_pdv.Visible := true;
end;

procedure TF_PDV.edt_cli_nome_pdvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
      VK_F2:
          begin
            F_pdv_clientes_listar := TF_pdv_clientes_listar.Create(self);
            F_pdv_clientes_listar.ShowModal;

          end;

      end;

end;

procedure TF_PDV.edt_cli_nome_pdvKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
      begin
         if edt_cli_nome_pdv.Text = '' then
                ShowMessage('Campo vazio!')
              else
              begin
                    with dm.SQL_clientes do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('select * from clientes');
                   SQL.Add('where cli_nome like :nome');
                   ParamByName('nome').Value := edt_cli_nome_pdv.Text + '%';
                   Open;
                   begin
                       if RecordCount = 0 then
                        ShowMessage('Cliente n�o encontrado!');
                        edt_cli_nome_pdv.Clear;
                        edt_cli_codigo_pdv.Clear;
                   end;

                   begin
                     if RecordCount = 1 then
                     edt_cli_nome_pdv.SelectAll;
                     edt_cli_nome_pdv.Text := dm.SQL_clientescli_nome.AsString;
                     edt_cli_codigo_pdv.Text := dm.SQL_clientescli_id.AsString;
                     lbl_resut_cpf_cnpj_cli_pdv.Caption := dm.SQL_clientescli_cnpj_cpf.AsString;
                     lbl_result_cel_cli_pdv.Caption := dm.SQL_clientescli_celular.AsString;
                     lbl_result_end_cli_pdv.Caption := dm.SQL_clientescli_endereco.AsString +'  N� '+ dm.SQL_clientescli_numero.AsString + ' '+ dm.SQL_clientescli_bairro.AsString;
                     edt_cli_codigo_pdv.SelectAll;

                   end;

               end;
              end;


          end;
end;

procedure TF_PDV.edt_pro_barras_pdvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


  case Key of
  VK_F2:
  begin
    F_pdv_produtos_listar := TF_pdv_produtos_listar.Create(self);
    F_pdv_produtos_listar.ShowModal;
  end;

  end;
end;

procedure TF_PDV.edt_pro_barras_pdvKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then

        with dm.SQL_produtos do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from produtos');
          SQL.Add('where pro_barra = :barra');
          ParamByName('barra').Value := edt_pro_barras_pdv.Text;
          Open;
          begin


              begin
                  if RecordCount = 0 then
                   ShowMessage('Produto n�o encontrado!');
                   edt_pro_barras_pdv.Clear ;
                   edt_pro_nome_pdv.Clear;
                   edt_pro_preco_pdv.Clear;
                   edt_pro_prazo_pdv.Clear;
                   edt_pro_barras_pdv.SetFocus ;

                    exit
                 end;

              begin
                if RecordCount = 1 then
                edt_pro_barras_pdv.Text := dm.SQL_produtospro_barra.AsString;
                edt_pro_nome_pdv.Text := dm.SQL_produtospro_nome.AsString;
                lbl_result_qtd_estoque_prod_pdv.Caption := dm.SQL_produtospro_estoque.AsString;
                edt_pro_qtd_pdv.SetFocus;
                edt_pro_qtd_pdv.SelectAll;

                end ;
             end;


        end;


       begin
        if not ( Key in['0'..'9',',', #8] ) then
        Key := #0;
        end;


end;

procedure TF_PDV.edt_pro_nome_pdvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
  VK_F2:
  begin
    F_pdv_produtos_listar := TF_pdv_produtos_listar.Create(self);
    F_pdv_produtos_listar.ShowModal;
    edt_pro_qtd_pdv.SetFocus;
  end;

  end;


end;

procedure TF_PDV.edt_pro_nome_pdvKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      begin
         if edt_pro_nome_pdv.Text = '' then
                ShowMessage('Campo vazio!')
              else
              begin
                  with dm.SQL_produtos do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select * from produtos');
                 SQL.Add('where pro_nome like  :nome');
                 ParamByName('nome').Value := edt_pro_nome_pdv.Text + '%';
                 Open;
                 begin
                     if RecordCount = 0 then
                      ShowMessage('Produto n�o encontrado!');
                      edt_pro_nome_pdv.Clear;
                      edt_pro_barras_pdv.Clear;
                 end;

                 begin
                   if RecordCount = 1 then
                   edt_pro_nome_pdv.SelectAll;
                   edt_pro_nome_pdv.Text := dm.SQL_produtospro_nome.AsString;
                   edt_pro_barras_pdv.Text := dm.SQL_produtospro_barra.AsString;
                   edt_pro_preco_pdv.Value := dm.SQL_produtospro_preco.Value;
                   edt_pro_prazo_pdv.Value := dm.SQL_produtospro_preco_prazo.Value;
                   lbl_result_qtd_estoque_prod_pdv.Caption := dm.SQL_produtospro_estoque.AsString;
                   edt_pro_qtd_pdv.SetFocus;
                   edt_pro_qtd_pdv.SelectAll;
                 end;

               end;
              end;


          end;
end;

procedure TF_PDV.edt_pro_qtd_pdvKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  btn_pro_iten_add_pdv.Click;
end;

procedure TF_PDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    F_PDV:= nil;
end;

procedure TF_PDV.FormCreate(Sender: TObject);
begin
   ProcedureBloqueiacampos;
end;

procedure TF_PDV.btn_iniciar_venda_pdvClick(Sender: TObject);
begin
  ProcedureIniciavenda;
  edt_cli_codigo_pdv.SetFocus;
end;

procedure TF_PDV.btn_pro_iten_add_pdvClick(Sender: TObject);
begin
  ProcedureProdutosAdd;
end;

procedure TF_PDV.btn_venda_sair_pdvClick(Sender: TObject);
begin
    Close;
    F_PDV := nil;
end;

end.
