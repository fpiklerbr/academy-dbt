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
    md5(a.pk_pedidovenda || b.fk_produto) as idvenda
    ,a.pk_pedidovenda as idpedido
    ,a.data_pedido
    ,b.fk_produto
    ,c.fk_razaovenda
    ,a.fk_cartaocredito
    ,a.fk_vendedor
    ,a.fk_endcobranca
    ,a.fk_cliente
    ,a.status
    ,sum(b.preco_unitario) as preco_un
    ,sum(b.quantidade_pedido) as soma_quantidade
from fato_vendas a
left join detalhes_vendas b on a.pk_pedidovenda = b.fk_pedidovenda
left join razao_vendas c on c.pk_idvenda = a.pk_pedidovenda
group by  a.pk_pedidovenda ,b.fk_produto ,a.data_pedido ,c.fk_razaovenda,a.fk_cartaocredito,a.fk_vendedor,a.fk_endcobranca,a.fk_cliente,a.status
