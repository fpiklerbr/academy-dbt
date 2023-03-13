with tb_estadoprovincia as(
SELECT
      cast(stateprovinceid as INTEGER) as pk_estadoprovincia		
    , cast(stateprovincecode as STRING) as cod_estadoprovincia
    , cast(countryregioncode as STRING) as fk_estadoregiao
    , cast(isonlystateprovinceflag as BOOLEAN) as flag_unicoestadoprovincia
    , cast(name as STRING) as nome_estadoprovincia
    , cast(territoryid as INTEGER) as fk_territorio
FROM {{ source('erp', 'stateprovince') }}
)

select     
*
from tb_estadoprovincia