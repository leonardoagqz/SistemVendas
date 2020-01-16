unit U_funcoes;


interface

uses vcl.dialogs, system.sysutils;
//declara funcoes e variaveis

// criad funcao TestarPermissao, com a variavel NOME_FORM do tipo STRING
//, esperado retorno do tipo boolean
function TestarPermissao (NOME_FORM:STRING):boolean;
function EAN13 ():string;



implementation
//implementando as funcoes

function TestarPermissao (NOME_FORM:STRING):boolean;
    begin
       if result = True then
          begin
          ShowMessage('Acesso Negado.');
          end

     end;

    // funcao  para gerar codigo de barras ------------------------


Function EAN13() : String;
var nX, nDigito, nPeso : Integer;
var nSoma, nMaior  : Double;
var base:string;

Begin
  // aqui eu seto o valor base para gerar o digito verificador
 base  := FormatDateTime('yymmdd', Date) + FormatDateTime('hhmmss', Time);
 nPeso := 3;
 nSoma := 0;

     For nX := 12 DownTo 1 do
     Begin

     nSoma := nSoma + StrToInt( base[ nX ] ) * nPeso;

         If nPeso = 3 Then
         nPeso := 1
         Else
         nPeso := 3;

     End;

 nMaior   := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
 nDigito  := Trunc( nMaior ) - Trunc( nSoma );

     If nDigito = 10 Then
     nDigito   := 0;
     //devolto o codigo base + o digito verificador prontos
     Result    := base + IntToStr( nDigito );

End;
// ------------fim do gera codigo de barras ----------------------


end.
