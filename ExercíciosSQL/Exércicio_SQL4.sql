












select c.[Código do Comprador],
c.[Nome do Comprador],
ac.[CodigoAssistenteCompras],
aa.[NomeAssistenteCompras]
from [Comprador]c
inner join [AssistenteComprador]ac
on c.[Código do Comprador] = ac.[CodigoComprador]
inner join [AssistenteCompras]aa
on ac.[CodigoAssistenteCompras] = aa.[CodigoAssistenteCompras]
order by 4














select * from [AssistenteComprador]

select * from [AssistenteCompras]
select * from [Comprador]

select * from [Agente]

select * from [Agenda Relacionamento Agente]