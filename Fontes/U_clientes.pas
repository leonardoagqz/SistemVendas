unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TF_clientes = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_clientes: TF_clientes;

implementation

{$R *.dfm}

procedure TF_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 F_clientes:= nil;
end;

end.
