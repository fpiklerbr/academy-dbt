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
territorio as (
SELECT 
    *
from
{{ ref('stg_salesterritory') }}
)

select
    a.pk_pedidovenda
    ,b.pk_detalhevenda
    ,b.preco_unitario
    ,b.quantidade_pedido
    ,a.data_pedido
    ,a.sk_ordemcompra
    ,a.sk_cartaocredito
    ,a.sk_vendedor
    ,c.nome_territorio
    ,c.sk_paisregiao
    ,a.sk_endcobranca
    ,a.sk_cliente
from fato_vendas a
left join detalhes_vendas b on a.pk_pedidovenda = b.fk_pedidovenda
left join territorio c on a.sk_territorio = c.pk_territoriovendas