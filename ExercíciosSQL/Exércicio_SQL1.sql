--Relacionar itens do comprador Vilmar, que estejam ativos, sejam da sistemática de compra na loja.
            -- Campos necessários, código, descrição, categoria e cadas de cadastro.

--encontrei numero do comprador
select * 
from [Comprador] 
order by 2

--analisei tabela produto com os codigos do comprador
select top 10* from [Produto] 
where [Código do Comprador]= 304

--analisei os codigos da situação na tabela situação
select * from [Situação] 
order by 2

--analise a caegoria
select top 200* from [Categoria]

--analisei a sistematica de compra
select * from [Sistemática de Compras]

select top 10 p.[código do produto],
p.[Descrição básica] as Descrição,
p.[código da categoria],
c.[Descrição da Categoria],
p.[Data de Cadastro],
p.[código sistemática de compras],
p.[código da situação]
from [Produto] p
inner join [categoria] c
on c.[Código da Categoria] = p.[Código da Categoria] --apelidar ambas tabelas e relacionar com a coluna em comum
where p.[Código do Comprador]= 304 
and p.[Código da Situação]= 1
and p.[Código Sistemática de Compras] = 20

-- codigo do comprador 304

