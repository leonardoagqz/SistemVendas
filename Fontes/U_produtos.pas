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
    btn_buscarprodutos: TSpeedButton;
    Image2: TImage;
    rg_buscar: TRadioGroup;
    ds_produtos_cad: TDataSource;
    Label3: TLabel;
    edt_nomeprod_cad_prod: TDBEdit;
    Label4: TLabel;
    edt_cod_barras: TDBEdit;
    Label5: TLabel;
    edt_ref_cad_prod: TDBEdit;
    Label6: TLabel;
    edt_custo_cad_prod: TDBEdit;
    Label7: TLabel;
    edt_preco_cad_prod: TDBEdit;
    Label8: TLabel;
    edt_preco_prazo_cad_prod: TDBEdit;
    Label9: TLabel;
    edt_estoque_cad_prod: TDBEdit;
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
    btn_gravar_cad_prod: TSpeedButton;
    btn_apagar_cad_prod: TSpeedButton;
    btn_cancelar_cad_prod: TSpeedButton;
    btn_cadastrar_cad_prod: TSpeedButton;
    SpeedButton1: TSpeedButton;
    img_ico_cad_prod: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscaChange(Sender: TObject);
    procedure img_buscarprodutosClick(Sender: TObject);
    procedure btn_buscarprodutosClick(Sender: TObject);
    procedure btn_editar_produtoClick(Sender: TObject);
    procedure dbg_produtosDblClick(Sender: TObject);
    procedure btn_gravar_cad_prodClick(Sender: TObject);
    procedure btn_apagar_cad_prodClick(Sender: TObject);
    procedure btn_cancelar_cad_prodClick(Sender: TObject);
    procedure btn_cadastrar_cad_prodClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tab_cadastrarShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_produtos: TF_produtos;

implementation

uses
  u_DM, U_funcoes;

{$R *.dfm}

procedure TF_produtos.btn_apagar_cad_prodClick(Sender: TObject);
begin
  dm.TB_produtos.Delete;
  dm.SQL_produtos.Close;
  dm.SQL_produtos.Open;
  page_produtos.ActivePage := tab_consultar;
end;

procedure TF_produtos.btn_cadastrar_cad_prodClick(Sender: TObject);
begin
    page_produtos.ActivePage := tab_cadastrar;
    btn_novo_cad.Click;
    btn_novo_cad.Enabled:=False;
    btn_apagar_cad_prod.Enabled:=False;

end;

procedure TF_produtos.btn_cancelar_cad_prodClick(Sender: TObject);
begin
  dm.TB_produtos.Cancel;
  dm.SQL_produtos.Close;
  dm.SQL_produtos.Open;
  page_produtos.ActivePage := tab_consultar;
end;

procedure TF_produtos.btn_editar_produtoClick(Sender: TObject);
begin
  dm.TB_produtos.Locate('pro_id',dm.SQL_produtospro_id.Value,[]);
  page_produtos.ActivePage := tab_cadastrar;
  btn_editar_cad.Click;
  btn_novo_cad.Enabled:=True;
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
          // ShowMessage('Produto n�o encontrado!');
         end; *)

end;

procedure TF_produtos.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
      begin
         if edt_busca.Text = '' then
                ShowMessage('Campo vazio!')
              else
              begin
                  with dm.SQL_produtos do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select * from produtos');
                    case rg_buscar.ItemIndex of
                    0 : SQL.Add('where pro_nome like :nome');
                    1 : SQL.Add('where pro_barra like :nome');

                    end;

                 ParamByName('nome').Value := edt_busca.Text + '%';
                 Open;

                 if RecordCount = 0 then
                 ShowMessage('Produto n�o encontrado!');

               end;
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
   dm.TB_produtos.Active:=True;
   page_produtos.ActivePage := tab_consultar;

end;

procedure TF_produtos.btn_gravar_cad_prodClick(Sender: TObject);
begin
  dm.TB_produtos.Post;
  dm.SQL_produtos.Close;
  dm.SQL_produtos.Open;
  page_produtos.ActivePage := tab_consultar;

end;

procedure TF_produtos.img_buscarprodutosClick(Sender: TObject);
begin
   with dm.SQL_produtos do
           begin
              if edt_busca.Text = '' then
                ShowMessage('Campo vazio!')
              else
                      begin
                        Close;
                        SQL.Clear;
                        SQL.Add('select * from produtos');
                            case rg_buscar.ItemIndex of
                              0 : SQL.Add('where pro_nome like :nome');
                              1 : SQL.Add('where pro_barra like :nome');

                             end;

                        ParamByName('nome').Value := edt_busca.Text + '%';
                        Open;

                       if RecordCount = 0 then
                       ShowMessage('Produto n�o encontrado!');

                       if edt_busca.Text = '' then
                       ShowMessage('Campo vazio!');

                   end;
           end;
end;

procedure TF_produtos.SpeedButton1Click(Sender: TObject);
begin
    edt_cod_barras.Text := EAN13;
end;

procedure TF_produtos.tab_cadastrarShow(Sender: TObject);
begin
  edt_nomeprod_cad_prod.SetFocus;
end;

procedure TF_produtos.btn_buscarprodutosClick(Sender: TObject);
begin
  with dm.SQL_produtos do
           begin
              if edt_busca.Text = '' then
              ShowMessage('Campo vazio!')

              else
                      begin
                         Close;
                            SQL.Clear;
                            SQL.Add('select * from produtos');
                              case rg_buscar.ItemIndex of
                                0 : SQL.Add('where pro_nome like :nome');
                                1 : SQL.Add('where pro_barra like :nome');

                               end;

                            ParamByName('nome').Value := edt_busca.Text + '%';
                            Open;

                         if RecordCount = 0 then
                         ShowMessage('Produto n�o encontrado!');
                     end


           end;
end;

end.
