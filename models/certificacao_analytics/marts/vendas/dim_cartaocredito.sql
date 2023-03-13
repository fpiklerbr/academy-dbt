with cartaocredito as (
select
    *
from  {{ ref('stg_creditcard') }}   
)
select * from cartaocredito