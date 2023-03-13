with cartaocredito as (
select
    *
from  {{ ref('stg_creditcard') }}   
)
select
    md5(cred.idcartaocredito)
    ,cred.*
from cartaocredito cred