unit U_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TF_produtos = class(TForm)
    stb_produtos: TStatusBar;
    page_produtos: TPageControl;
    tab_consultar: TTabSheet;
    tab_cadastrar: TTabSheet;
    dbg_produtos: TDBGrid;
    edt_busca: TEdit;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton_buscarprodutos: TSpeedButton;
    Image2: TImage;
    rg_buscar: TRadioGroup;
    ds_produtos_cad: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    acm_produtos: TActionManager;
    ac_insert: TDataSetInsert;
    ac_delet: TDataSetDelete;
    ac_editar: TDataSetEdit;
    ac_post: TDataSetPost;
    ac_cancelar: TDataSetCancel;
    btn_novo_cad: TSpeedButton;
    btn_editar_cad: TSpeedButton;
    btn_gravar_cad: TSpeedButton;
    btn_cancelar_cad: TSpeedButton;
    btn_apagar_cad: TSpeedButton;
    btn_editar_produto: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscaChange(Sender: TObject);
    procedure img_buscarprodutosClick(Sender: TObject);
    procedure SpeedButton_buscarprodutosClick(Sender: TObject);
    procedure btn_editar_produtoClick(Sender: TObject);
    procedure dbg_produtosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_produtos: TF_produtos;

implementation

uses
  u_DM;

{$R *.dfm}

procedure TF_produtos.btn_editar_produtoClick(Sender: TObject);
begin
  dm.TB_produtos.Locate('pro_id',dm.SQL_produtospro_id.Value,[]);
  page_produtos.ActivePage := tab_cadastrar;
  btn_editar_cad.Click;
end;

procedure TF_produtos.dbg_produtosDblClick(Sender: TObject);
begin
btn_editar_produto.Click;
end;

procedure TF_produtos.edt_buscaChange(Sender: TObject);
begin
 (* with dm.SQL_produtos do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from produtos');
           SQL.Add('where pro_nome like :nome');
           ParamByName('nome').Value := edt_busca.Text + '%';
           Open;

           //if RecordCount = 0 then
          // ShowMessage('Produto não encontrado!');
         end; *)

end;

procedure TF_produtos.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
      begin

        with dm.SQL_produtos do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select * from produtos');
                    case rg_buscar.ItemIndex of
                    0 : SQL.Add('where pro_nome like :nome');
                    1 : SQL.Add('where pro_barras like :nome');

                    end;

                 ParamByName('nome').Value := edt_busca.Text + '%';
                 Open;

                 if RecordCount = 0 then
                 ShowMessage('Produto não encontrado!');
               end;

          end;
  

end;

procedure TF_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_produtos := nil;
end;

procedure TF_produtos.FormCreate(Sender: TObject);
begin
  //dm.SQL_produtos.Open;
  dm.TB_produtos.Active := True;
  page_produtos.ActivePage := tab_consultar;

end;

procedure TF_produtos.img_buscarprodutosClick(Sender: TObject);
begin
   with dm.SQL_produtos do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from produtos');
           SQL.Add('where pro_nome like :nome');
           ParamByName('nome').Value := edt_busca.Text + '%';
           Open;

           if RecordCount = 0 then
           ShowMessage('Produto não encontrado!');

           if edt_busca.Text = '' then
           ShowMessage('Campo vazio!');

         end;
end;

procedure TF_produtos.SpeedButton_buscarprodutosClick(Sender: TObject);
begin
  with dm.SQL_produtos do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from produtos');
           SQL.Add('where pro_nome like :nome');
           ParamByName('nome').Value := edt_busca.Text + '%';
           Open;

           if RecordCount = 0 then
           ShowMessage('Produto não encontrado!');

           if edt_busca.Text = '' then
           ShowMessage('Campo vazio!');

         end;
end;

end.
