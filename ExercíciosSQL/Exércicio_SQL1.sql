--Relacionar itens do comprador Vilmar, que estejam ativos, sejam da sistem�tica de compra na loja.
            -- Campos necess�rios, c�digo, descri��o, categoria e cadas de cadastro.

--encontrei numero do comprador
select * 
from [Comprador] 
order by 2

--analisei tabela produto com os codigos do comprador
select top 10* from [Produto] 
where [C�digo do Comprador]= 304

--analisei os codigos da situa��o na tabela situa��o
select * from [Situa��o] 
order by 2

--analise a caegoria
select top 200* from [Categoria]

--analisei a sistematica de compra
select * from [Sistem�tica de Compras]

select top 10 p.[c�digo do produto],
p.[Descri��o b�sica] as Descri��o,
p.[c�digo da categoria],
c.[Descri��o da Categoria],
p.[Data de Cadastro],
p.[c�digo sistem�tica de compras],
p.[c�digo da situa��o]
from [Produto] p
inner join [categoria] c
on c.[C�digo da Categoria] = p.[C�digo da Categoria] --apelidar ambas tabelas e relacionar com a coluna em comum
where p.[C�digo do Comprador]= 304 
and p.[C�digo da Situa��o]= 1
and p.[C�digo Sistem�tica de Compras] = 20

-- codigo do comprador 304

