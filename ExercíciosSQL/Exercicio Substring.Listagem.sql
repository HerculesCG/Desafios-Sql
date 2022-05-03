--Listar condi��es de pagamento ativas que possuem % financeiro.
-- C�digo , descri��o, prazo, percentual, e se � desconto ou acr�scimo.


select [c�digo condi��o de pagamento],
[Descri��o condi��o Pagamento],
[Prazo],
[% Financeiro],
SUBSTRING(Indicadores,2,1) as [Desk_Acre]
from [Condi��o de Pagamento]
where SUBSTRING(Indicadores,14,1) = 'N'
and [% Financeiro] <> 0
and SUBSTRING(Indicadores,2,1) <> 'N'


select * from [Condi��o de Pagamento]
where SUBSTRING(Indicadores,14,1) = 'S'
and SUBSTRING(Indicadores,15,1) = 'N'
and [% Financeiro] <> 0