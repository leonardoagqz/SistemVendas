unit U_Etiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  RxToolEdit, RxCurrEdit, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppPrnabl, ppBarCod, ppBands, ppCache, ppDesignLayer,
  ppParameter;

type
  TF_etiquetas = class(TForm)
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
    btn_gerar_etiqueta: TSpeedButton;
    btn_gravar_cad_prod: TSpeedButton;
    btn_apagar_cad_prod: TSpeedButton;
    btn_cancelar_cad_prod: TSpeedButton;
    btn_cadastrar_cad_prod: TSpeedButton;
    SpeedButton1: TSpeedButton;
    img_ico_cad_prod: TImage;
    lbl_titulo_gerarEtiquetas: TLabel;
    DBGrid1: TDBGrid;
    btn_imprimirEtiqueta: TBitBtn;
    btn_cancelaretiqueta: TBitBtn;
    TB_gerarEtiquetas: TFDTable;
    TB_gerarEtiquetaseti_id: TFDAutoIncField;
    TB_gerarEtiquetaseti_produto: TIntegerField;
    SQL_listarEtiquetas: TFDQuery;
    Sql_EtiquetasPrint: TFDQuery;
    ds_listarEtiquetas: TDataSource;
    edt_etiquetaQtd: TCurrencyEdit;
    ds_etiquetasPrint: TDataSource;
    ppDBEtiquetasPrinter: TppDBPipeline;
    Report_etiquetasPrinter: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBBarCode1: TppDBBarCode;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    SQL_etiquetasApagar: TFDQuery;
    btn_removeretiqueta: TBitBtn;
    SQL_listarEtiquetaseti_id: TIntegerField;
    SQL_listarEtiquetaseti_produto: TIntegerField;
    SQL_listarEtiquetaspro_id: TIntegerField;
    SQL_listarEtiquetaspro_nome: TStringField;
    SQL_listarEtiquetaspro_barra: TStringField;
    SQL_listarEtiquetaspro_ref: TStringField;
    SQL_listarEtiquetaspro_custo: TFloatField;
    SQL_listarEtiquetaspro_preco: TFloatField;
    SQL_listarEtiquetaspro_preco_prazo: TFloatField;
    SQL_listarEtiquetaspro_estoque: TIntegerField;
    SQL_listarEtiquetasquant: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscaChange(Sender: TObject);
    procedure img_buscarprodutosClick(Sender: TObject);
    procedure btn_buscarprodutosClick(Sender: TObject);
    procedure btn_gerar_etiquetaClick(Sender: TObject);
    procedure dbg_produtosDblClick(Sender: TObject);
    procedure btn_gravar_cad_prodClick(Sender: TObject);
    procedure btn_apagar_cad_prodClick(Sender: TObject);
    procedure btn_cancelar_cad_prodClick(Sender: TObject);
    procedure btn_cadastrar_cad_prodClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tab_cadastrarShow(Sender: TObject);
    procedure btn_imprimirEtiquetaClick(Sender: TObject);
    procedure procedureEtiquetasApagar;
    procedure btn_cancelaretiquetaClick(Sender: TObject);
    procedure btn_removeretiquetaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_etiquetas: TF_etiquetas;

implementation

uses
  u_DM, U_funcoes, U_PesquisarProduto;

{$R *.dfm}

procedure TF_etiquetas.procedureEtiquetasApagar;
begin
  // spsgsr etiquetas

  with SQL_etiquetasApagar do
  begin
    Close;
    sql.Clear;
    SQL.Add('truncate table etiquetas'); //deleta todos os itens eti_id volta para 1
    ExecSQL;
  end;

  SQL_listarEtiquetas.Close;
  SQL_listarEtiquetas.Open;
  Sql_EtiquetasPrint.Close;
  Sql_EtiquetasPrint.Open;



end;

procedure TF_etiquetas.btn_apagar_cad_prodClick(Sender: TObject);
begin
  dm.TB_produtos.Delete;
  dm.SQL_produtos.Close;
  dm.SQL_produtos.Open;
  page_produtos.ActivePage := tab_consultar;
end;

procedure TF_etiquetas.btn_cadastrar_cad_prodClick(Sender: TObject);
begin
    page_produtos.ActivePage := tab_cadastrar;
    btn_novo_cad.Click;
    btn_novo_cad.Enabled:=False;
    btn_apagar_cad_prod.Enabled:=False;

end;

procedure TF_etiquetas.btn_cancelaretiquetaClick(Sender: TObject);
begin
  procedureEtiquetasApagar;
end;

procedure TF_etiquetas.btn_cancelar_cad_prodClick(Sender: TObject);
begin
  dm.TB_produtos.Cancel;
  dm.SQL_produtos.Close;
  dm.SQL_produtos.Open;
  page_produtos.ActivePage := tab_consultar;
end;

procedure TF_etiquetas.btn_gerar_etiquetaClick(Sender: TObject);

var i: Integer;

begin
  //selecionar produto para lan�ar

  if edt_etiquetaQtd.Value <1 then
  begin
    ShowMessage('Digite a quantidade de Etiquetas!');
    edt_etiquetaQtd.SetFocus;
    Exit
  end;


  TB_gerarEtiquetas.Active := True;

  for i  := StrToInt(edt_etiquetaQtd.Text) downto 1 do
    begin
      TB_gerarEtiquetas.Insert;
      TB_gerarEtiquetaseti_produto.Value := dm.SQL_produtospro_id.Value;
      TB_gerarEtiquetas.Post;

    end;

   ShowMessage('Foram geradas '+ edt_etiquetaQtd.Text + ' Etiquetas!');

   SQL_listarEtiquetas.Close;
   SQL_listarEtiquetas.Open;
   Sql_EtiquetasPrint.Close;
   Sql_EtiquetasPrint.Open;

end;

procedure TF_etiquetas.dbg_produtosDblClick(Sender: TObject);
begin
btn_gerar_etiqueta.Click;
end;

procedure TF_etiquetas.edt_buscaChange(Sender: TObject);
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

procedure TF_etiquetas.edt_buscaKeyPress(Sender: TObject; var Key: Char);
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

procedure TF_etiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_etiquetas := nil;
end;

procedure TF_etiquetas.FormCreate(Sender: TObject);
begin
   procedureEtiquetasApagar;

  //dm.SQL_produtos.Open;
   dm.TB_produtos.Active:=True;
   page_produtos.ActivePage := tab_consultar;
end;

procedure TF_etiquetas.btn_gravar_cad_prodClick(Sender: TObject);
begin
  dm.TB_produtos.Post;
  dm.SQL_produtos.Close;
  dm.SQL_produtos.Open;
  page_produtos.ActivePage := tab_consultar;

end;

procedure TF_etiquetas.btn_imprimirEtiquetaClick(Sender: TObject);
begin
  Report_etiquetasPrinter.PrintReport;
end;

procedure TF_etiquetas.btn_removeretiquetaClick(Sender: TObject);
begin
   with SQL_etiquetasApagar do
  begin
    Close;
    sql.Clear;
    SQL.Add('delete from etiquetas');
    SQL.Add('where eti_produto = :produto');
    ParamByName('produto').Value := SQL_listarEtiquetaspro_id.Value;
    ExecSQL;
  end;

  SQL_listarEtiquetas.Close;
  SQL_listarEtiquetas.Open;
  Sql_EtiquetasPrint.Close;
  Sql_EtiquetasPrint.Open;
end;

procedure TF_etiquetas.img_buscarprodutosClick(Sender: TObject);
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

procedure TF_etiquetas.SpeedButton1Click(Sender: TObject);
begin
  edt_cod_barras.Text := EAN13;
end;

procedure TF_etiquetas.tab_cadastrarShow(Sender: TObject);
begin
  edt_nomeprod_cad_prod.SetFocus;
end;

procedure TF_etiquetas.btn_buscarprodutosClick(Sender: TObject);
begin
  with dm.SQL_produtos do
    begin
      if edt_busca.Text = '' then
        begin
          //ShowMessage('Campo vazio!')
          edt_busca.Text := '%%';
          btn_buscarprodutos.Click;
          edt_busca.Text := '';
        end
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
