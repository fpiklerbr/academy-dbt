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
      md5(coalesce(a.idpedidovenda || b.idproduto)) as pk_venda
    , md5(a.idpedidovenda) as fk_pedidovenda
    , a.data_pedido
    , md5(b.idproduto) as fk_produto
    , md5(c.idrazaovenda) as fk_razaovenda
    , md5(a.idcartaocredito) as fk_cartaocredito
    , md5(a.idvendedor) as fk_vendedor
    , md5(a.idendcobranca) as fk_endcobranca
    , md5(a.idcliente) as fk_cliente
    , a.status
    , sum(b.preco_unitario) as preco_un
    , sum(b.quantidade_pedido) as soma_quantidade
from fato_vendas a
left join detalhes_vendas b on a.idpedidovenda = b.idpedidovenda
left join razao_vendas c on c.idvenda = a.idpedidovenda
group by  a.idpedidovenda ,b.idproduto ,a.data_pedido ,c.idrazaovenda,a.idcartaocredito,a.idvendedor,a.idendcobranca,a.idcliente,a.status
