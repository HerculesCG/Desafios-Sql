            -- Listar número da nota, código do item, descrição do item, quantidade, valor , cst icms, código da classificação fiscal, 
			--descrição da classificação, nome do comprador dos itens, de notas fiscais da operação 4012 da filial 01 do pdv 500 do dia 23/04.
           --  Tabelas envolvidas:
           --  Produto
            -- Comprador
            -- Classificação Fiscal
            -- Documento
            -- Item do Documento


--comecei pelos inner join pra relacionar todas as tabelas
-- para depois refinar o que é pedido
select d.[Número do Documento],
i.[Código do Produto],
p.[Descrição Básica],
i.[Descrição do Produto],
i.[Quantidade],
i.[Valor Total],
i.[CST ICMS],
i.[Código da Classificação Fiscal],
cla.[Descrição Classificação Fiscal],
c.[Nome do Comprador]
from
[Documento] d
inner join [Item do Documento] i
on i.[ID Documento] = d.[ID Documento]
inner join [produto] p
on p.[Código do Produto] = i.[Código do Produto]
inner join [Comprador] c
on c.[Código do Comprador] = p.[Código do Comprador]
inner join [Classificação Fiscal] cla
on p.[Código da Classificação Fiscal] = cla.[Código da Classificação Fiscal]
where 
d.[Código do Tipo de Operação] = 4012
and
d.[código do emitente] = 01
and
d.[série do documento] = '500'
and
d.[data de emissão] = '2022-04-23'






