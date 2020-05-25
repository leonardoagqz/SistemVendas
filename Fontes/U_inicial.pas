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
    VendasRelatrio1: TMenuItem;
    btn_clientes: TSpeedButton;
    btn_produtos: TSpeedButton;
    btn_venda: TSpeedButton;
    Configuraes1: TMenuItem;
    Sair1: TMenuItem;
    Lanamentos1: TMenuItem;
    Parcelas1: TMenuItem;
    GerarParcelas1: TMenuItem;
    BaixarParcelas1: TMenuItem;
    GerarEtiquetas1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Usurios1: TMenuItem;
    procedure onclick_menu_clientes(Sender: TObject);
    procedure btn_clientesClick(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
    procedure onclick_menu_produtos(Sender: TObject);
    procedure onclick_menu_sair(Sender: TObject);
    procedure onclick_menu_vendas(Sender: TObject);
    procedure btn_vendasClick(Sender: TObject);
    procedure Lanamentos1Click(Sender: TObject);
    procedure GerarParcelas1Click(Sender: TObject);
    procedure BaixarParcelas1Click(Sender: TObject);
    procedure GerarEtiquetas1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure VendasRelatrio1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure MVendas1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_inicial: TF_inicial;

implementation

{$R *.dfm}

uses U_clientes, U_funcoes, U_produtos, U_pdv, u_DM, U_lancamentos, U_GerarParcelas, U_BaixarParcelas, U_Etiquetas, U_vendasConsultas, U_login, U_usuarios, U_caixa;

//clique do botao clientes
procedure TF_inicial.BaixarParcelas1Click(Sender: TObject);
begin
  if TestarPermissao('F_baixarparcelas') = false then
  Exit;

    //verifico se o caixa esta aberto
   dm.CaixaVerifica;
   if dm.CAIXA_ABERTO = False then
   begin
     Exit;
   end;

  if F_baixarparcelas = nil then
  F_baixarparcelas := TF_baixarparcelas.Create(self);
  F_baixarparcelas.Show;

end;

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
   if TestarPermissao('F_clientes') = false then
   Exit;
  begin
      if F_clientes = nil then
      F_clientes := TF_clientes.Create(self);
      F_clientes.Show;
  end;


end;

procedure TF_inicial.onclick_menu_produtos(Sender: TObject);
begin
   if TestarPermissao('F_produtos') = false then
   Exit;
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

procedure TF_inicial.Caixa1Click(Sender: TObject);
begin
  if TestarPermissao('F_caixa') = false then
  Exit;
  if F_caixa = nil then
  F_caixa := TF_caixa.Create(Self);
  F_caixa.Show;

end;

procedure TF_inicial.Configuraes1Click(Sender: TObject);
begin
  if TestarPermissao('F_configuracoes') = false then
  Exit;
  {if F_configuracoes = nil then
  F_configuracoes := TF_configuracoes.Create(Self);
  F_configuracoes.show;}
end;

procedure TF_inicial.FormCreate(Sender: TObject);
begin
  //trazer a tela de login
  F_login := TF_login.Create(Self);
  F_login.ShowModal;


end;

procedure TF_inicial.GerarEtiquetas1Click(Sender: TObject);
begin
  if TestarPermissao('F_etiquetas') = false then
   Exit;
  if F_etiquetas = nil then
    begin
      F_etiquetas := TF_etiquetas.Create(self);
      F_etiquetas.ShowModal;
    end;
end;

procedure TF_inicial.GerarParcelas1Click(Sender: TObject);
begin
 if TestarPermissao('F_gerarparcelas') = false then
   Exit;
  if F_gerarparcelas = nil then
    begin
      F_gerarparcelas := TF_gerarparcelas.Create(self);
      F_gerarparcelas.ShowModal;
    end;
end;

procedure TF_inicial.Lanamentos1Click(Sender: TObject);
begin
   if TestarPermissao('F_lancamento') = false then
   Exit;

    //verifico se o caixa esta aberto
   dm.CaixaVerifica;
   if dm.CAIXA_ABERTO = False then
   begin
     Exit;
   end;

  if F_lancamento = nil then
    begin
      F_lancamento := TF_lancamento.Create(self);
      F_lancamento.ShowModal;
    end;
end;

procedure TF_inicial.MVendas1Click(Sender: TObject);
begin
    if TestarPermissao('F_vendasabertas') = false then
   Exit;
end;

procedure TF_inicial.onclick_menu_vendas(Sender: TObject);
begin
   if TestarPermissao('F_PDV') = false then
   Exit;
  if F_PDV = nil then
  begin
      F_PDV := TF_PDV.Create(Self);
      F_PDV.Show;
   end;

end;

procedure TF_inicial.SpeedButton1Click(Sender: TObject);
begin
 if TestarPermissao('F_etiquetas') = false then
   Exit;
  GerarEtiquetas1.Click;
end;

procedure TF_inicial.Usurios1Click(Sender: TObject);
begin
  if TestarPermissao('F_usuarios') = false then
  Exit;
  if F_usuarios = nil then
  F_usuarios := TF_usuarios.Create(Self);
  F_usuarios.ShowModal;
end;

procedure TF_inicial.VendasRelatrio1Click(Sender: TObject);
begin
  if TestarPermissao('F_vendasConsulta') = false then
  Exit;
  if F_vendasConsulta = nil then
  F_vendasConsulta := TF_vendasConsulta.Create(self);
  F_vendasConsulta.ShowModal;
end;

end.
