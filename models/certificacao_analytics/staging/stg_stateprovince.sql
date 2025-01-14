with tb_estadoprovincia as(
SELECT
      cast(stateprovinceid as STRING) as idestadoprovincia		
    , cast(stateprovincecode as STRING) as cod_estadoprovincia
    , cast(countryregioncode as STRING) as idestadoregiao
    , cast(isonlystateprovinceflag as BOOLEAN) as flag_unicoestadoprovincia
    , cast(name as STRING) as nomeestadoprovincia
    , cast(territoryid as INTEGER) as idterritorio
FROM {{ source('erp', 'stateprovince') }}
)

select     
*
from tb_estadoprovincia