unit U_inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Buttons;

type
  TF_inicial = class(TForm)
    Stb_inicial: TStatusBar;
    Panel_menu: TPanel;
    menu_inicial: TMenuItem;
    menu_produtos: TMenuItem;
    menu_clientes: TMenuItem;
    menu_principal: TMainMenu;
    Movimentos1: TMenuItem;
    menu_vendas: TMenuItem;
    Caixa1: TMenuItem;
    MVendas1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    VendasRelatrio1: TMenuItem;
    btn_clientes: TSpeedButton;
    btn_produtos: TSpeedButton;
    btn_venda: TSpeedButton;
    Configuraes1: TMenuItem;
    Sair1: TMenuItem;
    Lanamentos1: TMenuItem;
    Parcelas1: TMenuItem;
    GerarParcelas1: TMenuItem;
    procedure onclick_menu_clientes(Sender: TObject);
    procedure btn_clientesClick(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
    procedure onclick_menu_produtos(Sender: TObject);
    procedure onclick_menu_sair(Sender: TObject);
    procedure onclick_menu_vendas(Sender: TObject);
    procedure btn_vendasClick(Sender: TObject);
    procedure Lanamentos1Click(Sender: TObject);
    procedure GerarParcelas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_inicial: TF_inicial;

implementation

{$R *.dfm}

uses U_clientes, U_funcoes, U_produtos, U_pdv, u_DM, U_lancamentos, U_GerarParcelas;

//clique do botao clientes
procedure TF_inicial.btn_clientesClick(Sender: TObject);
begin
      if TestarPermissao('F_clientes') = false then
   Exit;
  if F_clientes = nil then
  begin
      F_clientes := TF_clientes.Create(Self);
      F_clientes.Show;
   end;
end;

//clique main.menu clientes
procedure TF_inicial.btn_produtosClick(Sender: TObject);
begin
     if TestarPermissao('F_produtos') = false then
   Exit;
  if F_produtos = nil then
  begin
      F_produtos := TF_produtos.Create(Self);
      F_produtos.Show;
   end;
end;

procedure TF_inicial.onclick_menu_clientes(Sender: TObject);
begin
   
  begin
      if F_clientes = nil then
      F_clientes := TF_clientes.Create(self);
      F_clientes.Show;
  end;


end;

procedure TF_inicial.onclick_menu_produtos(Sender: TObject);
begin
    if F_produtos = nil then
     F_produtos := TF_produtos.Create(self);
     F_produtos.Show;
end;

procedure TF_inicial.onclick_menu_sair(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TF_inicial.btn_vendasClick(Sender: TObject);
begin
    if TestarPermissao('F_PDV') = false then
   Exit;
  if F_PDV = nil then
  begin
      F_PDV := TF_PDV.Create(Self);
      F_PDV.Show;
   end;
end;

procedure TF_inicial.GerarParcelas1Click(Sender: TObject);
begin
  if F_gerarparcelas = nil then
    begin
      F_gerarparcelas := TF_gerarparcelas.Create(self);
      F_gerarparcelas.ShowModal;
    end;
end;

procedure TF_inicial.Lanamentos1Click(Sender: TObject);
begin
  if F_lancamento = nil then
    begin
      F_lancamento := TF_lancamento.Create(self);
      F_lancamento.ShowModal;
    end;
end;

procedure TF_inicial.onclick_menu_vendas(Sender: TObject);
begin

  if F_PDV = nil then
  begin
      F_PDV := TF_PDV.Create(Self);
      F_PDV.Show;
   end;

end;

end.
