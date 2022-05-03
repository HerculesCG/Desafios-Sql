--Listar condições de pagamento ativas que possuem % financeiro.
-- Código , descrição, prazo, percentual, e se é desconto ou acréscimo.


select [código condição de pagamento],
[Descrição condição Pagamento],
[Prazo],
[% Financeiro],
SUBSTRING(Indicadores,2,1) as [Desk_Acre]
from [Condição de Pagamento]
where SUBSTRING(Indicadores,14,1) = 'N'
and [% Financeiro] <> 0
and SUBSTRING(Indicadores,2,1) <> 'N'


select * from [Condição de Pagamento]
where SUBSTRING(Indicadores,14,1) = 'S'
and SUBSTRING(Indicadores,15,1) = 'N'
and [% Financeiro] <> 0