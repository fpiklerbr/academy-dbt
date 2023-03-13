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
    ,a.idendereco
    ,a.endereco_linha1
    ,a.cidade_endereco
    ,b.nome_estadoprovincia
    ,c.nome_pais
from endereco a
left join estadoprovincia b on a.fk_estadoprovincia = b.pk_estadoprovincia
left join paisregiao c on b.fk_estadoregiao = c.pk_regiaopais