with endereco as (
SELECT
    *
FROM  {{ ref('stg_address') }}   
)
,
estadoprovincia as (
SELECT
    *
FROM  {{ ref('stg_stateprovince') }}   
)
,
paisregiao as (
SELECT
    *
FROM  {{ ref('stg_countryregion') }}     
)

select 
    a.pk_endereco
    ,a.endereco_linha1
    ,a.cidade_endereco
    ,b.nome_estadoprovincia
    ,c.nome_pais
from endereco a
left join estadoprovincia b on a.fk_estadoprovincia = b.pk_estadoprovincia
left join paisregiao c on b.fk_estadoregiao = c.pk_regiaopais