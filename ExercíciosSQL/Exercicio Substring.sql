-- Listar c�digo e descri��o das opera��es de entrada  e ativas no sistema.
--INDICADORES � SISCORP UNIVAREJO

select [C�digo do tipo de opera��o],
[Descri��o do Tipo de Opera��o]
from [Tipo de Opera��o]
where SUBSTRING(Indicadores,1,1) = 'E'
and
SUBSTRING(Indicadores,3,1) = 'S'
-- 23 � a posi��o e o 1 � o n�mero de caractere
-- S � O INDICADOR