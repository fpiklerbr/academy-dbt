with clientes as (
select
    *
from  {{ ref('stg_customer') }}   
)
,
pessoas as (
select
    *
from  {{ ref('stg_person') }}  
)

select
    md5(idcliente) as sk_clientes
    ,a.idcliente
    ,b.nome_completo
from clientes a
left join pessoas b on a.idpessoa = b.idpessoa