with tb_territoriovendas as(
SELECT
    cast(territoryid as INTEGER) as pk_territoriovendas			
    ,cast(name as STRING) as nome_territorio		
    ,cast(countryregioncode as STRING) as sk_paisregiao			
FROM {{ source('erp', 'salesterritory') }}
)

select     
*
from tb_territoriovendas