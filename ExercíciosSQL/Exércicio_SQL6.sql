 --Listar número, série, data de entrada, valor,  cliente e tipo de operação das notas fiscais de
 --compra dentro dos meses de fevereiro e março no qual contenha os itens 2237480,2260594 e 8960504.
 --Tabela Documento e Item do documento.

 select top 10 d.[Número do Documento],
 d.[Série do Documento],
 d.[Código do Tipo de Operação],
 d.[Valor Principal],
 d.[Código do Cliente],
 d.[Data de Entrada]
 from [Documento]d
 inner join [Item do Documento]id
 on id.[ID Documento] = d.[ID Documento]
 where 
 id.[Código do Produto] in (2237480,2260594,8960504)
 and [Data de Entrada] between '2022-02-01' and '2022-03-31'
and [Código do Tipo de Operação] in (select distinct [Código do Tipo de Operação]  from [Tipo de Operação]  where substring(indicadores,1,1) = 'E' and substring(indicadores,23,1) = 'S' and [Código Tipo Operação Fiscal] = 3) 
 order by [Data de Entrada]


 select * from [Tipo de Operação Fiscal]



 select distinct [Código do Tipo de Operação]
 from [Tipo de Operação]
where substring(indicadores,1,1) = 'E'
and substring(indicadores,23,1) = 'S'
and [Código Tipo Operação Fiscal] = 3

 


 select top 10 * from [Item do Documento]
 where [código do produto] in (2237480,2260594,8960504)