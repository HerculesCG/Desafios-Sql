select * from produto p1
inner join Composi��o c
on p1.[C�digo do Produto] = c.[C�digo do Composto]
inner join [Item da Composi��o] ic
on ic.[C�digo do Composto] = c.[C�digo do Composto]
inner join produto p2
on p2.[C�digo do Produto] = ic.[C�digo do Componente]
where p1.[C�digo da Situa��o] = 1

select 
c.[C�digo do Composto],
p1.[Descri��o B�sica] + ' ' + p1.[Complemento] as [Descri��o Composto],
ic.[C�digo do Componente],
p2.[Descri��o B�sica] + ' ' + p2.[Complemento] as [Descri��o Componente]
from produto p1
inner join Composi��o c
on p1.[C�digo do Produto] = c.[C�digo do Composto]
inner join [Item da Composi��o] ic
on ic.[C�digo do Composto] = c.[C�digo do Composto]
inner join produto p2
on p2.[C�digo do Produto] = ic.[C�digo do Componente]
where p1.[C�digo da Situa��o] = 1
order by 2
