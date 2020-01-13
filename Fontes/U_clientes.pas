unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TF_clientes = class(TForm)
    pag_clientes: TPageControl;
    TabSheet1: TTabSheet;
    tab_cadastrar: TTabSheet;
    img_consultar_cli: TImage;
    img_cadastrar_cli: TImage;
    dbg_clientes: TDBGrid;
    edt_buscar_cli: TEdit;
    rg_buscar_cli: TRadioGroup;
    lbl_buscar_cli: TLabel;
    btn_buscarclientes: TSpeedButton;
    btn_cadastrar_cad_cli: TSpeedButton;
    btn_editar_cliente: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_clientes: TF_clientes;

implementation

uses
  u_DM, U_funcoes;

{$R *.dfm}

procedure TF_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 F_clientes:= nil;
end;

end.
