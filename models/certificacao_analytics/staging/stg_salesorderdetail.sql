with tb_salesorderdetail as(
SELECT 
      cast(salesorderid as int) as idpedidovenda
    , cast(salesorderdetailid as int) as iddetalhevenda
    , cast(carriertrackingnumber as string) as idnumordemregistro
    , cast(orderqty as int) as quantidade_pedido
    , cast(productid as int) as idproduto
    , cast(specialofferid as int) as idordemespecial
    , cast(unitprice as decimal) as preco_unitario
    , cast(unitpricediscount as decimal) as preco_descontado
FROM {{ source('erp', 'salesorderdetail') }}
)
select     
*
from tb_salesorderdetail


