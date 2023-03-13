with tb_salesorderheader as(
SELECT 
      cast(salesorderid as int) as idpedidovenda
    , cast(revisionnumber as int) as numerorevis
    , date(orderdate) as datapedido
    , date(duedate) as datalimite
    , date(shipdate) as dataenvio
    , cast(status as string) as status
    , cast(onlineorderflag as boolean) as onlinesn
    , cast(purchaseordernumber as string) as idordemcompra
    , cast(accountnumber as string) as idconta
    , cast(customerid as int) as idcliente
    , cast(salespersonid	as int) as idvendedor
    , cast(territoryid as int) as idterritorio
    , cast(billtoaddressid as int) as idendcobranca
    , cast(shiptoaddressid as int) as idendentrega
    , cast(shipmethodid as int) as idmetodoentrega
    , cast(creditcardid as int) as idcartaocredito
    , cast(creditcardapprovalcode as string) as codaprovcartao		
    , cast(currencyrateid as int) as idtxconversaomoeda
    , cast(subtotal as decimal) as subtotalvenda
    , cast(taxamt as decimal) as subtotaltaxavenda
    , cast(freight as decimal) as subtotalfrete
    , cast(totaldue as decimal) as totalvenda
FROM {{ source('erp', 'salesorderheader') }}
)
select     
*
from tb_salesorderheader