 --Listar n�mero, s�rie, data de entrada, valor,  cliente e tipo de opera��o das notas fiscais de
 --compra dentro dos meses de fevereiro e mar�o no qual contenha os itens 2237480,2260594 e 8960504.
 --Tabela Documento e Item do documento.

 select top 10 d.[N�mero do Documento],
 d.[S�rie do Documento],
 d.[C�digo do Tipo de Opera��o],
 d.[Valor Principal],
 d.[C�digo do Cliente],
 d.[Data de Entrada]
 from [Documento]d
 inner join [Item do Documento]id
 on id.[ID Documento] = d.[ID Documento]
 where 
 id.[C�digo do Produto] in (2237480,2260594,8960504)
 and [Data de Entrada] between '2022-02-01' and '2022-03-31'
and [C�digo do Tipo de Opera��o] in (select distinct [C�digo do Tipo de Opera��o]  from [Tipo de Opera��o]  where substring(indicadores,1,1) = 'E' and substring(indicadores,23,1) = 'S' and [C�digo Tipo Opera��o Fiscal] = 3) 
 order by [Data de Entrada]


 select * from [Tipo de Opera��o Fiscal]



 select distinct [C�digo do Tipo de Opera��o]
 from [Tipo de Opera��o]
where substring(indicadores,1,1) = 'E'
and substring(indicadores,23,1) = 'S'
and [C�digo Tipo Opera��o Fiscal] = 3

 


 select top 10 * from [Item do Documento]
 where [c�digo do produto] in (2237480,2260594,8960504)