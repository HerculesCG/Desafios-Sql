select top 100 p.[código do produto],
p.[descrição básica] +' '+ p.[Complemento] as Descrição,
p.[Código do Comprador],
c.[Nome do Comprador]
from [Produto] p
inner join [Comprador]c
on c.[Código do Comprador] = p.[código do comprador]
where p.[Código Sistemática de Compras] = 10
and p.[Código da Situação] = 1
and p.[Quantidade na Embalagem] = 1

select top 10 * 
from [Comprador]

select top 10 * 
from [Produto]
where [Quantidade na Embalagem] >1