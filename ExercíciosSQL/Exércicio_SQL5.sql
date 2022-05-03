          --   Listar código e descrição completa dos produtos pedidos pelas filiais para a matriz F69 com o Cd abastecedor principal 30. 

select p.[código do produto],
p.[Descrição Básica] + ' ' + p.[Complemento] as [Descrição Completa],
cd.[Descrição do CD]
from [produto]p
inner join [CD do Produto]cdP
on p.[Código do Produto] = cdP.[Código do Produto]
inner join [CD]cd
on cd.[Código da Coligada] = cdP.[Código da Coligada]
and cd.[Código do CD] = cdP.[Código do CD]
where SUBSTRING(cdP.indicadores,1,1) = 'S'
and cd.[Código da Coligada] = 69
and cd.[Código do CD] = 30
and p.[Código Sistemática de Compras] = 1
and p.[Código da Situação] = 1

select * from [CD]

select top 10 * from [CD do Produto]