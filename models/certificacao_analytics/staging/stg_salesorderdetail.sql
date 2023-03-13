with tb_salesorderdetail as(
SELECT 
      cast(salesorderid as int) as fk_pedidovenda
    , cast(salesorderdetailid as int) as pk_detalhevenda
    , cast(carriertrackingnumber as string) as fk_numordemregistro
    , cast(orderqty as int) as quantidade_pedido
    , cast(productid as int) as fk_produto
    , cast(specialofferid as int) as fk_ordem_especial
    , cast(unitprice as decimal) as preco_unitario
    , cast(unitpricediscount as decimal) as preco_descontado
FROM {{ source('erp', 'salesorderdetail') }}
)
select     
*
from tb_salesorderdetail


