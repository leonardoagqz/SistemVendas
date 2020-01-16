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
    dbg_lançamento_pdv: TDBGrid;
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
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

end.
