with cartaocredito as (
SELECT
    *
FROM  {{ ref('stg_creditcard') }}   
)
select 
    md5(id_cartaocredito) as sk_cartaocredito
    ,cred.*    
from cartaocredito cred