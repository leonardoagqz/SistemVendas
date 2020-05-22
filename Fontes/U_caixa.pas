unit U_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  RxToolEdit, RxCurrEdit, Vcl.Grids, Vcl.DBGrids;

type
  TF_caixa = class(TForm)
    dbgListarCaixa: TDBGrid;
    edt_CaixaHoje: TCurrencyEdit;
    lbl_caixahoje: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_caixa: TF_caixa;

implementation

uses
  u_DM;

{$R *.dfm}

procedure TF_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_caixa := nil;
end;

end.
