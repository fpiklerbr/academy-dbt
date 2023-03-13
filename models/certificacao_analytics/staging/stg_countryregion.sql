    with tb_regiaopais as(
SELECT 
      cast(countryregioncode as STRING) as idregiaopais			
    , cast(name as STRING) as	nomepais
FROM {{ source('erp', 'countryregion') }}
)

select     
*
from tb_regiaopais