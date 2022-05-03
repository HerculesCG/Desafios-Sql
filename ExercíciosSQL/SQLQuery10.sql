
           -- Listar itens de pedidos feitos da F02 para o CD 69.
           -- Pedidos em situação pendente desde janeiro de 2022 do tipo grade com ordem de compra.
           -- Listar número do pedido, data de geração, código do produto,  descrição e quantidade.
           -- Tabelas:
           -- Pedido
           -- Item do Pedido
           -- Tipo de Pedido
           -- Produto


select IP.[Número do Pedido],
p.[Data/Hora Geração],
IP.[Código do Produto],
IP.[Descrição do Produto],
IP.[Quantidade Solicitada],
P.[Data/Hora Emissão da Nota]
from [Item do Pedido]IP
inner join [Pedido]P
on P.[Código da Geradora] = IP.[Código da Geradora]
and P.[Número do Pedido] = IP.[Número do Pedido]
inner join [Tipo de Pedido]TP
on TP.[Código do Tipo de Pedido] = p.[Código do Tipo de Pedido]
inner join [Produto]PR
on PR.[Código do Produto] = IP.[Código do Produto]
where IP.[Código da Situação] = 12
and P.[Código do Cliente] = 02
and P.[Código do Fornecedor] = 69
and P.[Código do Tipo de Pedido] = 2
and P.[Data/Hora Geração] >= '2020-01-01'




select * from [Agente]
select top 10 * from [Item do Pedido]
select top 10 * from [Pedido]
select top 10 * from [Tipo de Pedido]
select top 10 * from [Item do Pedido]
select top 10 * from [Produto]
select top 10 * from [Tipo de Pedido]
select * from [Situação]
select top 10 * from [Pedido]P
where SUBSTRING(P.Indicadores,5,1) = 'S'
and p.[Data/Hora Emissão da Nota] >= '2022-01-01'