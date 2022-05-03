--1)	Listar n�mero da nota, s�rie da nota, valor da nota, c�digo e raz�o social do cliente e a coligada.
--Opera��es de venda 4001,4005,4019 das filiais 3,17,29,42,54,55,60,74,75 do per�odo de 01/04/2022 � 15/04/2022. Somente notas v�lidas.


select d.[n�mero do documento],
d.[S�rie do Documento] as [S�rie da nota],
d.[Valor Principal],
d.[C�digo do Cliente],
a.[Raz�o Social],
d.[data de emiss�o],
d.[C�digo do Emitente]

from
[documento]d
inner join [Agente]a
on a.[C�digo do Agente] = d.[C�digo do Cliente]
where d.[C�digo do Tipo de Opera��o] in (4001,4005,4019)
and d.[C�digo do Emitente] in (3,17,29,42,54,55,60,74,75)
and d.[Data de Emiss�o] between '2022-04-01' and '2022-04-15'
order by 6



select * from [Coligada]
select * from
[Documento]


--2)	Listar c�digo do produto, descri��o completa, c�digo da categoria e descri��o da categoria, do comprador 313, que estejam em situa��o normal.


select  p.[c�digo do produto],
p.[descri��o b�sica] + ' ' + [Complemento] as Descri��o,
ca.[C�digo da Categoria],
ca.[Descri��o da Categoria],
c.[C�digo do Comprador],
c.[Nome do Comprador],
p.[C�digo da Situa��o]
from [produto]p
inner join [Comprador] c
on c.[C�digo do Comprador] = p.[C�digo do Comprador]
inner join [Categoria]ca
on ca.[C�digo da Categoria] = p.[C�digo da Categoria]
where c.[C�digo do Comprador] = 313
and p.[C�digo da Situa��o] = 1

