
           -- Listar itens de pedidos feitos da F02 para o CD 69.
           -- Pedidos em situa��o pendente desde janeiro de 2022 do tipo grade com ordem de compra.
           -- Listar n�mero do pedido, data de gera��o, c�digo do produto,  descri��o e quantidade.
           -- Tabelas:
           -- Pedido
           -- Item do Pedido
           -- Tipo de Pedido
           -- Produto


select IP.[N�mero do Pedido],
p.[Data/Hora Gera��o],
IP.[C�digo do Produto],
IP.[Descri��o do Produto],
IP.[Quantidade Solicitada],
P.[Data/Hora Emiss�o da Nota]
from [Item do Pedido]IP
inner join [Pedido]P
on P.[C�digo da Geradora] = IP.[C�digo da Geradora]
and P.[N�mero do Pedido] = IP.[N�mero do Pedido]
inner join [Tipo de Pedido]TP
on TP.[C�digo do Tipo de Pedido] = p.[C�digo do Tipo de Pedido]
inner join [Produto]PR
on PR.[C�digo do Produto] = IP.[C�digo do Produto]
where IP.[C�digo da Situa��o] = 12
and P.[C�digo do Cliente] = 02
and P.[C�digo do Fornecedor] = 69
and P.[C�digo do Tipo de Pedido] = 2
and P.[Data/Hora Gera��o] >= '2020-01-01'




select * from [Agente]
select top 10 * from [Item do Pedido]
select top 10 * from [Pedido]
select top 10 * from [Tipo de Pedido]
select top 10 * from [Item do Pedido]
select top 10 * from [Produto]
select top 10 * from [Tipo de Pedido]
select * from [Situa��o]
select top 10 * from [Pedido]P
where SUBSTRING(P.Indicadores,5,1) = 'S'
and p.[Data/Hora Emiss�o da Nota] >= '2022-01-01'