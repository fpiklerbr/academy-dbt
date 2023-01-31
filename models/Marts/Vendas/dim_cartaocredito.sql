with cartaocredito as (
SELECT
    *
FROM  {{ ref('stg_creditcard') }}   
)
select * from cartaocredito