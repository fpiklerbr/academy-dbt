with fato_vendas AS (
SELECT 
    *
from
{{ ref('stg_salesorderheader') }}
)
,
detalhes_vendas as (
SELECT 
    *
from
{{ ref('stg_salesorderdetail') }}
)

select
    b.pk_detalhevenda
    ,a.pk_pedidovenda
    ,b.fk_produto
    ,b.preco_unitario
    ,b.quantidade_pedido
    ,a.data_pedido
    ,a.sk_ordemcompra
    ,a.sk_cartaocredito
    ,a.sk_vendedor
    ,a.sk_endcobranca
    ,a.sk_cliente
from fato_vendas a
left join detalhes_vendas b on a.pk_pedidovenda = b.fk_pedidovenda
