












select c.[C�digo do Comprador],
c.[Nome do Comprador],
ac.[CodigoAssistenteCompras],
aa.[NomeAssistenteCompras]
from [Comprador]c
inner join [AssistenteComprador]ac
on c.[C�digo do Comprador] = ac.[CodigoComprador]
inner join [AssistenteCompras]aa
on ac.[CodigoAssistenteCompras] = aa.[CodigoAssistenteCompras]
order by 4














select * from [AssistenteComprador]

select * from [AssistenteCompras]
select * from [Comprador]

select * from [Agente]

select * from [Agenda Relacionamento Agente]