-- Listar código e descrição das operações de entrada  e ativas no sistema.
--INDICADORES É SISCORP UNIVAREJO

select [Código do tipo de operação],
[Descrição do Tipo de Operação]
from [Tipo de Operação]
where SUBSTRING(Indicadores,1,1) = 'E'
and
SUBSTRING(Indicadores,3,1) = 'S'
-- 23 é a posição e o 1 é o número de caractere
-- S É O INDICADOR