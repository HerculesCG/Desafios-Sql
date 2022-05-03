            -- Listar n�mero da nota, c�digo do item, descri��o do item, quantidade, valor , cst icms, c�digo da classifica��o fiscal, 
			--descri��o da classifica��o, nome do comprador dos itens, de notas fiscais da opera��o 4012 da filial 01 do pdv 500 do dia 23/04.
           --  Tabelas envolvidas:
           --  Produto
            -- Comprador
            -- Classifica��o Fiscal
            -- Documento
            -- Item do Documento


--comecei pelos inner join pra relacionar todas as tabelas
-- para depois refinar o que � pedido
select d.[N�mero do Documento],
i.[C�digo do Produto],
p.[Descri��o B�sica],
i.[Descri��o do Produto],
i.[Quantidade],
i.[Valor Total],
i.[CST ICMS],
i.[C�digo da Classifica��o Fiscal],
cla.[Descri��o Classifica��o Fiscal],
c.[Nome do Comprador]
from
[Documento] d
inner join [Item do Documento] i
on i.[ID Documento] = d.[ID Documento]
inner join [produto] p
on p.[C�digo do Produto] = i.[C�digo do Produto]
inner join [Comprador] c
on c.[C�digo do Comprador] = p.[C�digo do Comprador]
inner join [Classifica��o Fiscal] cla
on p.[C�digo da Classifica��o Fiscal] = cla.[C�digo da Classifica��o Fiscal]
where 
d.[C�digo do Tipo de Opera��o] = 4012
and
d.[c�digo do emitente] = 01
and
d.[s�rie do documento] = '500'
and
d.[data de emiss�o] = '2022-04-23'






