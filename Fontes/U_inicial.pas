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
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    menu_principal: TMainMenu;
    Movimentos1: TMenuItem;
    Venda1: TMenuItem;
    Caixa1: TMenuItem;
    MVendas1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    VendasRelatrio1: TMenuItem;
    btn_clientes: TSpeedButton;
    btn_produtos: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Configuraes1: TMenuItem;
    Sair1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure btn_clientesClick(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_inicial: TF_inicial;

implementation

{$R *.dfm}

uses U_clientes, U_funcoes, U_produtos;

//clique do botao clientes
procedure TF_inicial.btn_clientesClick(Sender: TObject);
begin

if TestarPermissao('F_clientes') = False then
   exit;
  if F_clientes = nil then
  F_clientes := TF_clientes.Create(self);
  F_clientes.Show;
end;

//clique main.menu clientes
procedure TF_inicial.btn_produtosClick(Sender: TObject);
begin
    if TestarPermissao('F_produtos') = false then
  exit;

  if F_produtos = nil then
  F_produtos := TF_produtos.Create(self);
  F_produtos.Show;
end;

procedure TF_inicial.Clientes1Click(Sender: TObject);
begin
   if TestarPermissao('F_clientes') = False then
   exit;

  if F_clientes = nil then
  F_clientes := TF_clientes.Create(self);
  F_clientes.Show;
end;

procedure TF_inicial.Produtos1Click(Sender: TObject);
begin
  if TestarPermissao('F_produtos') = false then
  exit;

  if F_produtos = nil then
  F_produtos := TF_produtos.Create(self);
  F_produtos.Show;
end;

procedure TF_inicial.Sair1Click(Sender: TObject);
begin
 Application.Terminate;
end;

end.
