unit U_pdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit,
  Vcl.Buttons;

type
  TF_PDV = class(TForm)
    stb_pdv: TStatusBar;
    panel_pdv_baixo: TPanel;
    dbg_lanšamento_pdv: TDBGrid;
    edt_pro_barras_pdv: TEdit;
    edt_pro_nome_pdv: TEdit;
    edt_pro_preco_pdv: TCurrencyEdit;
    edt_pro_prazo_pdv: TCurrencyEdit;
    edt_pro_qtd_pdv: TCurrencyEdit;
    btn_pro_add_pdv: TSpeedButton;
    edt_total_pdv: TCurrencyEdit;
    edt_total_prazo_pdv: TCurrencyEdit;
    lbl_total: TLabel;
    ldb_total_prazo: TLabel;
    btn_impressao_pdv: TSpeedButton;
    btn_venda_fechar_pdv: TSpeedButton;
    btn_venda_gravar_pdv: TSpeedButton;
    btn_venda_cancelar_pdv: TSpeedButton;
    btn_iten_remove_pdv: TSpeedButton;
    edt_cli_codigo_pdv: TEdit;
    edt_cli_nome_pdv: TEdit;
    lbl_buscarporbarras_pdv: TLabel;
    lbl_buscar_clientes_pdv: TLabel;
    lbl_qtd_pdv: TLabel;
    lbl_buscarpornome_pdv: TLabel;
    btn_iniciar_venda_pdv: TSpeedButton;
    btn_venda_sair_pdv: TSpeedButton;
    panel_btns_venda: TPanel;
    panel_dados: TPanel;
    panel_dados_clientes: TPanel;
    panel_buscar_barras_nome_pdv: TPanel;
    panel_btn_iniciar_venda_pdv: TPanel;
    panel_btns_grv_can_fec_vendas_pdv: TPanel;
    DBGrid1: TDBGrid;
    lbl_cod_cliente: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_venda_sair_pdvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PDV: TF_PDV;

implementation

{$R *.dfm}

procedure TF_PDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    F_PDV:= nil;
end;

procedure TF_PDV.btn_venda_sair_pdvClick(Sender: TObject);
begin
    Close;
    F_PDV := nil;
end;

end.
