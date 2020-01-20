unit U_PesquisarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TF_pdv_clientes_listar = class(TForm)
    pn_pesquisar_cliente_alto: TPanel;
    pn_pesquisa_cli_alto: TPanel;
    lbl_pesquisa_cli: TLabel;
    edt_pesquisar_cli_pdv: TEdit;
    dbg_pesquisar_cliente: TDBGrid;
    pn_pesquisar_produto_baixo: TPanel;
    btn_ok_pesquisa_cli: TSpeedButton;
    stb_clientes: TStatusBar;
    procedure edt_pesquisar_cli_pdvChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg_pesquisar_clienteDblClick(Sender: TObject);
    procedure dbg_pesquisar_clienteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_pdv_clientes_listar: TF_pdv_clientes_listar;

implementation

uses
  U_pdv, u_DM;

{$R *.dfm}

procedure TF_pdv_clientes_listar.dbg_pesquisar_clienteDblClick(Sender: TObject);
begin
    btn_ok_pesquisa_cli.Click;
end;

procedure TF_pdv_clientes_listar.dbg_pesquisar_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    btn_ok_pesquisa_cli.Click;
end;

procedure TF_pdv_clientes_listar.edt_pesquisar_cli_pdvChange(Sender: TObject);
begin
    with dm.SQL_produtos do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from clientes');
           SQL.Add('where cli_nome like :nome');
           ParamByName('nome').Value := edt_pesquisar_cli_pdv.Text + '%' ;
           Open;

           if RecordCount = 0 then
           ShowMessage('Produto n�o encontrado!');
           edt_pesquisar_cli_pdv.SetFocus;

         end;

end;

procedure TF_pdv_clientes_listar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_pdv_clientes_listar := nil;
end;

procedure TF_pdv_clientes_listar.FormShow(Sender: TObject);
begin
  edt_pesquisar_cli_pdv.SetFocus;
end;

end.
