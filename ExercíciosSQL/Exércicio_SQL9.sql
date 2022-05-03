  --Listar ordem de compra e seus itens, do comprador 102 e que estejam em situação normal e que o cliente for a F68
  --Número da ordem, comprador, fornecedor com código e nome, itens da ordem de compra com código, descrição, quantidade e valor unitário.
             
select top 10 from [Produto]

select * from [Comprador] 

select oc.[número da ordem de compra],
oc.[Código do Comprador],
oc.[Código do Fornecedor],
A.[Razão Social],
IOC.[Código do Produto],
P.[Descrição Básica] + ' ' + p.[Complemento] as [Descrição],
IOC.[Quantidade Comprada] as [Quantidade],
IOC.[Preço de Compra]
from [Ordem de Compra]oc
inner join [Agente]A
on A.[Código do Agente] = oc.[Código do Fornecedor]
inner join [Item da Ordem de Compra]IOC
on IOC.[Código do Comprador] = oc.[Código do Comprador]
and ioc.[Número da Ordem de Compra] = oc.[Número da Ordem de Compra]
inner join [Produto]P
on P.[Código do Produto] = IOC.[Código do Produto]
where oc.[Código do Comprador] = 102
and oc.[Código do Cliente] = 68
and oc.[Código da Situação] = 1
and SUBSTRING(A.Indicadores,3,1) = 'S'


select top 10 * from [Agente]
select * from [Fornecedor do Produto]


select * from [Produto] 
where [Código do Produto] = 450






select top 10 * from [Ordem de Compra]
where [Código do Comprador] = 102
and [Código do Cliente] = 68
and [Código da Situação] = 1

select top 10 * from [Item da Ordem de Compra]
select top 10 * from [Ordem de Compra]