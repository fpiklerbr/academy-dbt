with endereco as (
select
    *
from  {{ ref('stg_address') }}   
)
,
estadoprovincia as (
select
    *
from  {{ ref('stg_stateprovince') }}   
)
,
paisregiao as (
select
    *
from  {{ ref('stg_countryregion') }}     
)

select 
      md5(idendereco) as sk_endereco
    , a.idendereco
    , a.enderecolinha1
    , a.cidadeendereco
    , b.nomeestadoprovincia
    , c.nomepais
from endereco a
left join estadoprovincia b on a.idestadoprovincia = b.idestadoprovincia
left join paisregiao c on b.idestadoregiao = c.idregiaopais