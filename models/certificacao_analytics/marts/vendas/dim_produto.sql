with produtos as (
select
    *
from  {{ ref('stg_product') }}   
)
select 
      md5(prod.idproduto) as sk_produto
    , prod.*
from produtos prod