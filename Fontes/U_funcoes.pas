unit U_funcoes;



interface

uses vcl.dialogs ;
//declara funcoes e variaveis

// criad funcao TestarPermissao, com a variavel NOME_FORM do tipo STRING
//, esperado retorno do tipo boolean
function TestarPermissao (NOME_FORM:STRING):boolean;



implementation
//implementando as funcoes

function TestarPermissao (NOME_FORM:STRING):boolean;
begin
   if result = true then
   begin
      ShowMessage('Acesso Negado.');
   end




end;

end.
