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

select * from fato_vendas