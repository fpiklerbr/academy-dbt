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
    md5(a.idvendedor) as sk_vendedor
    , a.idvendedor
    , b.nome_completo
from vendedores a
inner join pessoas b on a.idvendedor = b.idpessoa
inner join colaboradores c on c.idvendedor = a.idvendedor