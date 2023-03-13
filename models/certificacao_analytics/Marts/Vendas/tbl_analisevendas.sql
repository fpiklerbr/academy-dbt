with fato_vendas as(
SELECT
    *
FROM  {{ ref('fato_vendas') }}   
)
,
dim_produtos as(
SELECT
    *
FROM  {{ ref('dim_produto') }} 
)
,
dim_cartaocredito as(
SELECT
    *
FROM  {{ ref('dim_cartaocredito') }} 
)
,
dim_clientevendas as(
SELECT
    *
FROM  {{ ref('dim_clientevendas') }} 
)
,
dim_enderecovenda as(
SELECT
    *
FROM  {{ ref('dim_enderecovenda') }} 
)
,
dim_razaovenda as(
SELECT
    *
FROM  {{ ref('dim_razaovenda') }} 
)
,
dim_vendedores as(
SELECT
    *
FROM  {{ ref('dim_vendedores') }} 
)

select 
    a.idvenda
    ,a.idpedido
    ,a.data_pedido as data_venda
    ,a.status
    ,a.preco_un
    ,a.soma_quantidade
    ,b.nome_produto
    ,c.tipo_cartaocredito
    ,d.nome_completo as nome_cliente
    ,e.endereco_linha1 as endereco
    ,e.cidade_endereco
    ,e.nome_estadoprovincia as estado_endereco
    ,e.nome_pais as pais_endereco
    ,f.nome_razao_venda
    ,h.nome_completo as nome_completo_vendedor
from fato_vendas a
left join dim_produtos b on a.fk_produto = b.pk_produto
left join dim_cartaocredito c on a.fk_cartaocredito = c.pk_cartaocredito
left join dim_clientevendas d on a.fk_cliente = d.pk_customer
left join dim_enderecovenda e on a.fk_endcobranca = e.pk_endereco
left join dim_razaovenda f on a.fk_razaovenda = f.pk_razaovenda
left join dim_vendedores h on a.fk_vendedor = h.pk_entidadebusiness