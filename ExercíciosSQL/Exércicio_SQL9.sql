  --Listar ordem de compra e seus itens, do comprador 102 e que estejam em situa��o normal e que o cliente for a F68
  --N�mero da ordem, comprador, fornecedor com c�digo e nome, itens da ordem de compra com c�digo, descri��o, quantidade e valor unit�rio.
             
select top 10 from [Produto]

select * from [Comprador] 

select oc.[n�mero da ordem de compra],
oc.[C�digo do Comprador],
oc.[C�digo do Fornecedor],
A.[Raz�o Social],
IOC.[C�digo do Produto],
P.[Descri��o B�sica] + ' ' + p.[Complemento] as [Descri��o],
IOC.[Quantidade Comprada] as [Quantidade],
IOC.[Pre�o de Compra]
from [Ordem de Compra]oc
inner join [Agente]A
on A.[C�digo do Agente] = oc.[C�digo do Fornecedor]
inner join [Item da Ordem de Compra]IOC
on IOC.[C�digo do Comprador] = oc.[C�digo do Comprador]
and ioc.[N�mero da Ordem de Compra] = oc.[N�mero da Ordem de Compra]
inner join [Produto]P
on P.[C�digo do Produto] = IOC.[C�digo do Produto]
where oc.[C�digo do Comprador] = 102
and oc.[C�digo do Cliente] = 68
and oc.[C�digo da Situa��o] = 1
and SUBSTRING(A.Indicadores,3,1) = 'S'


select top 10 * from [Agente]
select * from [Fornecedor do Produto]


select * from [Produto] 
where [C�digo do Produto] = 450






select top 10 * from [Ordem de Compra]
where [C�digo do Comprador] = 102
and [C�digo do Cliente] = 68
and [C�digo da Situa��o] = 1

select top 10 * from [Item da Ordem de Compra]
select top 10 * from [Ordem de Compra]