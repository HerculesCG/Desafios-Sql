select top 100 p.[c�digo do produto],
p.[descri��o b�sica] +' '+ p.[Complemento] as Descri��o,
p.[C�digo do Comprador],
c.[Nome do Comprador]
from [Produto] p
inner join [Comprador]c
on c.[C�digo do Comprador] = p.[c�digo do comprador]
where p.[C�digo Sistem�tica de Compras] = 10
and p.[C�digo da Situa��o] = 1
and p.[Quantidade na Embalagem] = 1

select top 10 * 
from [Comprador]

select top 10 * 
from [Produto]
where [Quantidade na Embalagem] >1