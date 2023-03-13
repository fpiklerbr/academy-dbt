with tb_territoriovendas as(
SELECT
      cast(territoryid as INTEGER) as idterritoriovendas			
    , cast(name as STRING) as nome_territorio		
    , cast(countryregioncode as STRING) as idpaisregiao			
FROM {{ source('erp', 'salesterritory') }}
)

select     
*
from tb_territoriovendas