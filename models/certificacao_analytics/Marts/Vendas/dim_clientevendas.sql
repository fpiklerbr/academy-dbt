with clientes as (
SELECT
    *
FROM  {{ ref('stg_customer') }}   
)
,
pessoas as (
SELECT
    *
FROM  {{ ref('stg_person') }}  
)

SELECT 
    a.pk_customer
    ,b.nome_completo
FROM clientes a
left join pessoas b on a.fk_person = b.pk_person