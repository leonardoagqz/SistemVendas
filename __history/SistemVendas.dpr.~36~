program SistemVendas;


uses
  Vcl.Forms,
  U_inicial in 'Fontes\U_inicial.pas' {F_inicial},
  U_clientes in 'Fontes\U_clientes.pas' {F_clientes},
  U_funcoes in 'Fontes\U_funcoes.pas',
  U_produtos in 'Fontes\U_produtos.pas' {F_produtos},
  u_DM in 'Fontes\u_DM.pas' {dm: TDataModule},
  U_pdv in 'Fontes\U_pdv.pas' {F_PDV},
  U_PesquisarProduto in 'Fontes\U_PesquisarProduto.pas' {F_pdv_produtos_listar},
  U_PesquisarCliente in 'Fontes\U_PesquisarCliente.pas' {F_pdv_clientes_listar},
  U_lancamentos in 'Fontes\U_lancamentos.pas' {F_lancamento},
  U_GerarParcelas in 'Fontes\U_GerarParcelas.pas' {F_gerarparcelas},
  U_BaixarParcelas in 'Fontes\U_BaixarParcelas.pas' {F_baixarparcelas},
  U_Etiquetas in 'Fontes\U_Etiquetas.pas' {F_etiquetas},
  U_vendasConsultas in 'Fontes\U_vendasConsultas.pas' {F_vendasConsulta},
  U_login in 'Fontes\U_login.pas' {F_login},
  U_usuarios in 'Fontes\U_usuarios.pas' {F_usuarios},
  U_caixa in 'Fontes\U_caixa.pas' {F_caixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TF_inicial, F_inicial);
  Application.Run;
end.
