unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TF_clientes = class(TForm)
    pag_clientes: TPageControl;
    tab_consultar: TTabSheet;
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
    img_ico_cad_cli: TImage;
    ds_clientes_cad: TDataSource;
    btn_novo_cad_cli: TSpeedButton;
    btn_editar_cad_cli: TSpeedButton;
    btn_gravar_cad_cli: TSpeedButton;
    btn_cancelar_cad_cli: TSpeedButton;
    btn_apagar_cad_cli: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edt_nome_cli: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    acm_clientes: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_buscarclientesClick(Sender: TObject);
    procedure edt_buscar_cliKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cadastrar_cad_cliClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_gravar_cad_cliClick(Sender: TObject);
    procedure btn_cancelar_cad_cliClick(Sender: TObject);
    procedure btn_apagar_cad_cliClick(Sender: TObject);
    procedure tab_cadastrarShow(Sender: TObject);
    procedure btn_editar_clienteClick(Sender: TObject);
    procedure dbg_clientesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_clientes: TF_clientes;

implementation

uses
  u_DM, U_funcoes, U_PesquisarCliente;

{$R *.dfm}

procedure TF_clientes.btn_apagar_cad_cliClick(Sender: TObject);
begin
  dm.TB_clientes.Delete;
  dm.SQL_clientes.Close;
  dm.SQL_clientes.Open;
  pag_clientes.ActivePage := tab_consultar;
end;

procedure TF_clientes.btn_buscarclientesClick(Sender: TObject);
begin
  with dm.SQL_clientes do
    begin
      if edt_buscar_cli.Text = '' then
        begin
          //ShowMessage('Campo vazio!')
          edt_buscar_cli.Text := '%%';
          btn_buscarclientes.Click;
          edt_buscar_cli.Text := '';
        end
        else
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from clientes');
            case rg_buscar_cli.ItemIndex of
              0 : SQL.Add('where cli_nome like :nome');
              1 : SQL.Add('where cli_cnpj_cpf like :nome');
            end;

            ParamByName('nome').Value := edt_buscar_cli.Text + '%';
            Open;

            if RecordCount = 0 then
              ShowMessage('Cliente n�o encontrado!');
              edt_buscar_cli.Clear;
          end
    end;
end;

procedure TF_clientes.btn_cadastrar_cad_cliClick(Sender: TObject);
begin
    pag_clientes.ActivePage := tab_cadastrar;
    btn_novo_cad_cli.Click;
    btn_novo_cad_cli.Enabled:=False;
    btn_apagar_cad_cli.Enabled:=False;
end;

procedure TF_clientes.btn_cancelar_cad_cliClick(Sender: TObject);
begin
  dm.TB_clientes.Cancel;
  dm.SQL_clientes.Close;
  dm.SQL_clientes.Open;
  pag_clientes.ActivePage := tab_consultar;
end;

procedure TF_clientes.btn_editar_clienteClick(Sender: TObject);
begin
  dm.TB_clientes.Locate('cli_id',dm.SQL_clientescli_id.Value,[]);
  pag_clientes.ActivePage := tab_cadastrar;
  btn_editar_cad_cli.Click;
  btn_novo_cad_cli.Enabled:=True;
end;

procedure TF_clientes.btn_gravar_cad_cliClick(Sender: TObject);
begin
  dm.TB_clientes.Post;
  dm.SQL_clientes.Close;
  dm.SQL_clientes.Open;
  pag_clientes.ActivePage := tab_consultar;
end;

procedure TF_clientes.dbg_clientesDblClick(Sender: TObject);
begin
  if dbg_clientes.DataSource.DataSet.RecordCount > 0 then
  begin
    btn_editar_cliente.Click;
  end
  else
  begin
  ShowMessage('Voc� n�o pesquisou nenhum cliente!');
  edt_buscar_cli.SetFocus;
  end;

end;

procedure TF_clientes.edt_buscar_cliKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      btn_buscarclientes.Click;
    end;
end;

procedure TF_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 F_clientes:= nil;
end;

procedure TF_clientes.FormCreate(Sender: TObject);
begin
    dm.TB_clientes.Active:=True;
   pag_clientes.ActivePage := tab_consultar;

end;

procedure TF_clientes.tab_cadastrarShow(Sender: TObject);
begin
  edt_nome_cli.SetFocus;
end;

end.
