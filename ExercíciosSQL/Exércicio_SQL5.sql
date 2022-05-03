          --   Listar c�digo e descri��o completa dos produtos pedidos pelas filiais para a matriz F69 com o Cd abastecedor principal 30. 

select p.[c�digo do produto],
p.[Descri��o B�sica] + ' ' + p.[Complemento] as [Descri��o Completa],
cd.[Descri��o do CD]
from [produto]p
inner join [CD do Produto]cdP
on p.[C�digo do Produto] = cdP.[C�digo do Produto]
inner join [CD]cd
on cd.[C�digo da Coligada] = cdP.[C�digo da Coligada]
and cd.[C�digo do CD] = cdP.[C�digo do CD]
where SUBSTRING(cdP.indicadores,1,1) = 'S'
and cd.[C�digo da Coligada] = 69
and cd.[C�digo do CD] = 30
and p.[C�digo Sistem�tica de Compras] = 1
and p.[C�digo da Situa��o] = 1

select * from [CD]

select top 10 * from [CD do Produto]