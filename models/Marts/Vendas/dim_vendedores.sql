with vendedores as (
SELECT
    *
FROM  {{ ref('stg_salesperson') }}   
)
,
pessoas as (
SELECT
    *
FROM  {{ ref('stg_person') }}   
)
,
colaboradores as (
SELECT
    *
FROM  {{ ref('stg_employee') }}   
)

SELECT
    a.pk_entidadebusiness
    ,b.nome_completo
from vendedores a
inner join pessoas b on a.pk_entidadebusiness = b.pk_person
inner join colaboradores c on c.fk_entidade = a.pk_entidadebusiness