unit U_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TF_produtos = class(TForm)
    stb_produtos: TStatusBar;
    page_produtos: TPageControl;
    tab_consultar: TTabSheet;
    tab_cadastrar: TTabSheet;
    dbg_produtos: TDBGrid;
    edt_busca: TEdit;
    Label1: TLabel;
    img_buscarprodutos: TImage;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscaChange(Sender: TObject);
    procedure img_buscarprodutosClick(Sender: TObject);
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
           SQL.Add('where pro_nome like :nome');
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
  dm.SQL_produtos.Open;
  edt_busca.SetFocus;
  
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

end.
