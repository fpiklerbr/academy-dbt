with produtos as (
SELECT
    *
FROM  {{ ref('stg_product') }}   
)
select * from produtos