with vendedores as (
select
    *
from  {{ ref('stg_salesperson') }}   
)
,
pessoas as (
select
    *
from  {{ ref('stg_person') }}   
)
,
colaboradores as (
select
    *
from  {{ ref('stg_employee') }}   
)

select
    md5(a.id_vendedores) as sk_vendedores
    , a.id_vendedores
    , b.nome_completo
from vendedores a
inner join pessoas b on a.pk_entidadebusiness = b.pk_person
inner join colaboradores c on c.fk_entidade = a.pk_entidadebusiness