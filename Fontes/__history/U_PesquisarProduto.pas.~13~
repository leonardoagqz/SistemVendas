unit U_PesquisarProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, U_clientes;

type
  TF_pdv_produtos_listar = class(TForm)
    dbg_pesquisar_produto: TDBGrid;
    edt_pesquisar_pro_pdv: TEdit;
    pn_pesquisar_produto_alto: TPanel;
    stb_produtos: TStatusBar;
    pn_pesquisar_produto_baixo: TPanel;
    lbl_pesquisa_pro: TLabel;
    btn_ok_pesquisa_pro: TSpeedButton;
    pn_pesquisa_pro_alto: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_pesquisar_pro_pdvChange(Sender: TObject);
    procedure dbg_pesquisar_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_pesquisar_produtoDblClick(Sender: TObject);
    procedure btn_ok_pesquisa_proClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_pdv_produtos_listar: TF_pdv_produtos_listar;

implementation

uses
  U_pdv, u_DM, U_produtos, U_funcoes;

{$R *.dfm}

procedure TF_pdv_produtos_listar.btn_ok_pesquisa_proClick(Sender: TObject);
begin
   F_PDV.edt_pro_nome_pdv.Text := dm.SQL_produtospro_nome.AsString;
   F_PDV.edt_pro_barras_pdv.Text := dm.SQL_produtospro_barra.AsString;
   F_PDV.edt_pro_preco_pdv.Value := dm.SQL_produtospro_preco.Value;
   F_PDV.edt_pro_prazo_pdv.Value := dm.SQL_produtospro_preco_prazo.Value;
   F_PDV.lbl_result_qtd_estoque_prod_pdv.Caption := dm.SQL_produtospro_estoque.AsString;
   F_PDV.edt_pro_qtd_pdv.SetFocus;
   F_pdv_produtos_listar.Close;

end;

procedure TF_pdv_produtos_listar.dbg_pesquisar_produtoDblClick(Sender: TObject);
begin
  btn_ok_pesquisa_pro.Click;


end;

procedure TF_pdv_produtos_listar.dbg_pesquisar_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    btn_ok_pesquisa_pro.Click;
end;

procedure TF_pdv_produtos_listar.edt_pesquisar_pro_pdvChange(Sender: TObject);
begin

        with dm.SQL_produtos do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from produtos');
           SQL.Add('where pro_nome like :nome');
           ParamByName('nome').Value := edt_pesquisar_pro_pdv.Text + '%' ;
           Open;

           if RecordCount = 0 then
           ShowMessage('Produto não encontrado!');
           edt_pesquisar_pro_pdv.SetFocus;

         end;


end;

procedure TF_pdv_produtos_listar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_pdv_produtos_listar  := nil;
end;

procedure TF_pdv_produtos_listar.FormShow(Sender: TObject);
begin
  edt_pesquisar_pro_pdv.SetFocus;
end;

end.
