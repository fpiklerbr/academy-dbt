    with tb_regiaopais as(
SELECT 
      cast(countryregioncode as STRING) as pk_regiaopais			
    , cast(name as STRING) as	nome_pais
FROM {{ source('erp', 'countryregion') }}
)

select     
*
from tb_regiaopais