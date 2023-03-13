with cartaocredito as (
select
    *
from  {{ ref('stg_creditcard') }}   
)
select
    md5(cred.idcartaocredito) as sk_cartaocredito
    ,cred.*
from cartaocredito cred