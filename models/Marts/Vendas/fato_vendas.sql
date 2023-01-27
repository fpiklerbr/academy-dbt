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
,
razao_vendas as (
SELECT 
    *
from
{{ ref('stg_salesorderheadersalesreason') }}
)

select
    b.pk_detalhevenda
    ,a.pk_pedidovenda
    ,b.fk_produto
    ,b.preco_unitario
    ,b.quantidade_pedido
    ,a.data_pedido
    ,c.sk_razaovenda
    ,a.sk_cartaocredito
    ,a.sk_vendedor
    ,a.sk_endcobranca
    ,a.sk_cliente
from fato_vendas a
left join detalhes_vendas b on a.pk_pedidovenda = b.fk_pedidovenda
left join razao_vendas c on c.pk_idvenda = a.pk_pedidovenda
