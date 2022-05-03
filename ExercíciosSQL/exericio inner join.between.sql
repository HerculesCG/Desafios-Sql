--1)	Listar número da nota, série da nota, valor da nota, código e razão social do cliente e a coligada.
--Operações de venda 4001,4005,4019 das filiais 3,17,29,42,54,55,60,74,75 do período de 01/04/2022 à 15/04/2022. Somente notas válidas.


select d.[número do documento],
d.[Série do Documento] as [Série da nota],
d.[Valor Principal],
d.[Código do Cliente],
a.[Razão Social],
d.[data de emissão],
d.[Código do Emitente]

from
[documento]d
inner join [Agente]a
on a.[Código do Agente] = d.[Código do Cliente]
where d.[Código do Tipo de Operação] in (4001,4005,4019)
and d.[Código do Emitente] in (3,17,29,42,54,55,60,74,75)
and d.[Data de Emissão] between '2022-04-01' and '2022-04-15'
order by 6



select * from [Coligada]
select * from
[Documento]


--2)	Listar código do produto, descrição completa, código da categoria e descrição da categoria, do comprador 313, que estejam em situação normal.


select  p.[código do produto],
p.[descrição básica] + ' ' + [Complemento] as Descrição,
ca.[Código da Categoria],
ca.[Descrição da Categoria],
c.[Código do Comprador],
c.[Nome do Comprador],
p.[Código da Situação]
from [produto]p
inner join [Comprador] c
on c.[Código do Comprador] = p.[Código do Comprador]
inner join [Categoria]ca
on ca.[Código da Categoria] = p.[Código da Categoria]
where c.[Código do Comprador] = 313
and p.[Código da Situação] = 1

