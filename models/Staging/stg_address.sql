with tb_address as(
SELECT 
    cast(addressid as INTEGER) as pk_endereco			
    ,cast(addressline1 as STRING) as endereco_linha1
    ,cast(addressline2 as STRING) as endereco_linha2
    ,cast(city as STRING) as cidade_endereco
    ,cast(stateprovinceid as INTEGER) as fk_estadoprovincia	
    ,cast(postalcode as STRING) as cep
    ,cast(spatiallocation as STRING) as alocacao_espac
FROM {{ source('erp', 'address') }}
)
select     
*
from tb_address