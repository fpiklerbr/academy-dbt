with razaovenda as (
select
    *
from  {{ ref('stg_salesreason') }}   
)

select
      md5(raz.idrazaovenda) as sk_razaovenda
    , nomerazaovenda
from razaovenda raz