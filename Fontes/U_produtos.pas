unit U_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls;

type
  TF_produtos = class(TForm)
    stb_produtos: TStatusBar;
    page_produtos: TPageControl;
    tab_consultar: TTabSheet;
    tab_cadastrar: TTabSheet;
    dbg_produtos: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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

procedure TF_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_produtos := nil;
end;

procedure TF_produtos.FormCreate(Sender: TObject);
begin
  dm.SQL_produtos.Open;
end;

end.
