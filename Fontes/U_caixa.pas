unit U_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  RxToolEdit, RxCurrEdit, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_caixa = class(TForm)
    dbgListarCaixa: TDBGrid;
    edt_CaixaHoje: TCurrencyEdit;
    lbl_caixahoje: TLabel;
    edtCaixaInicial: TCurrencyEdit;
    Label1: TLabel;
    btnAbreCaixa: TBitBtn;
    lblCaixa: TLabel;
    TB_AbreCaixa: TFDTable;
    TB_AbreCaixacaixa_id: TFDAutoIncField;
    TB_AbreCaixacaixa_valor: TFloatField;
    TB_AbreCaixacaixa_data_abre: TDateField;
    TB_AbreCaixacaixa_data_fecha: TDateField;
    TB_AbreCaixacaixa_inicial: TFloatField;
    TB_AbreCaixacaixa_usuario: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAbreCaixaClick(Sender: TObject);
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

procedure TF_caixa.btnAbreCaixaClick(Sender: TObject);
begin
  //abriro caixa do dia
  TB_AbreCaixa.Active:= True;
  TB_AbreCaixa.Insert;
  TB_AbreCaixacaixa_data_abre.Value:= Date;
  TB_AbreCaixacaixa_valor.Value := 0;
  TB_AbreCaixacaixa_inicial.Value := edtCaixaInicial.Value;
  TB_AbreCaixacaixa_usuario.Value := dm.SQL_usuariouser_id.Value;
  TB_AbreCaixa.Post;
  btnAbreCaixa.Enabled := false;
  edtCaixaInicial.Enabled:= False;
  lblCaixa.Font.Color :=clGreen;
  //refresh no caixa
  dm.SQL_caixa.Close;
  dm.SQL_caixa.Open;
  btnAbreCaixa.Enabled := false;
  edtCaixaInicial.Enabled:= False;

  ShowMessage('Caixa Aberto com Sucesso!!');

  //verifico se o caixa esta aberto
 dm.CaixaVerifica;
 if dm.CAIXA_ABERTO = False then
 begin
   lblCaixa.Caption := 'Caixa Fechado';
   lblCaixa.Font.Color :=clRed;
   btnAbreCaixa.Enabled:=True;
   edtCaixaInicial.Enabled:=True;
 end
 else
 begin
   lblCaixa.Caption := 'Caixa Aberto';
   lblCaixa.Font.Color :=clGreen;
   btnAbreCaixa.Enabled := false;
   edtCaixaInicial.Enabled:= False;
 end;

end;

procedure TF_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_caixa := nil;
end;

procedure TF_caixa.FormCreate(Sender: TObject);
begin
 //verifico se o caixa esta aberto
 dm.CaixaVerifica;
 if dm.CAIXA_ABERTO = False then
 begin
   lblCaixa.Caption := 'Caixa Fechado';
   lblCaixa.Font.Color :=clRed;
   btnAbreCaixa.Enabled:=True;
   edtCaixaInicial.Enabled:=True;
 end
 else
 begin
   lblCaixa.Caption := 'Caixa Aberto';
   lblCaixa.Font.Color :=clGreen;
   btnAbreCaixa.Enabled := false;
   edtCaixaInicial.Enabled:= False;
 end;

end;

end.
