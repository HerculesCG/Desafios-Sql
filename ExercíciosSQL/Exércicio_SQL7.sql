select * from produto p1
inner join Composição c
on p1.[Código do Produto] = c.[Código do Composto]
inner join [Item da Composição] ic
on ic.[Código do Composto] = c.[Código do Composto]
inner join produto p2
on p2.[Código do Produto] = ic.[Código do Componente]
where p1.[Código da Situação] = 1

select 
c.[Código do Composto],
p1.[Descrição Básica] + ' ' + p1.[Complemento] as [Descrição Composto],
ic.[Código do Componente],
p2.[Descrição Básica] + ' ' + p2.[Complemento] as [Descrição Componente]
from produto p1
inner join Composição c
on p1.[Código do Produto] = c.[Código do Composto]
inner join [Item da Composição] ic
on ic.[Código do Composto] = c.[Código do Composto]
inner join produto p2
on p2.[Código do Produto] = ic.[Código do Componente]
where p1.[Código da Situação] = 1
order by 2
