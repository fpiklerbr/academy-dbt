with tb_salesorderheader as(
SELECT 
      cast(salesorderid as int) as pk_pedidovenda
    , cast(revisionnumber as int) as numerorevis
    , date(orderdate) as data_pedido
    , date(duedate) as data_limite
    , date(shipdate) as data_envio
    , cast(status as string) as status
    , cast(onlineorderflag as boolean) as online_sn
    , cast(purchaseordernumber as string) as fk_ordemcompra
    , cast(accountnumber as string) as fk_conta
    , cast(customerid as int) as fk_cliente
    , cast(salespersonid	as int) as fk_vendedor
    , cast(territoryid as int) as fk_territorio
    , cast(billtoaddressid as int) as fk_endcobranca
    , cast(shiptoaddressid as int) as fk_endentrega
    , cast(shipmethodid as int) as fk_metodoentrega
    , cast(creditcardid as int) as fk_cartaocredito
    , cast(creditcardapprovalcode as string) as cod_aprov_cartao		
    , cast(currencyrateid as int) as fk_tx_conversao_moeda
    , cast(subtotal as decimal) as subtotal_venda
    , cast(taxamt as decimal) as subtotal_taxa_venda
    , cast(freight as decimal) as subtotal_frete
    , cast(totaldue as decimal) as total_venda
FROM {{ source('erp', 'salesorderheader') }}
)
select     
*
from tb_salesorderheader