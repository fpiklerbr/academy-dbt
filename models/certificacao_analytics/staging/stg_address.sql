with tb_address as(
select 
      cast(addressid as STRING) as idendereco		
    , cast(addressline1 as STRING) as enderecolinha1
    , cast(addressline2 as STRING) as enderecolinha2
    , cast(city as STRING) as cidadeendereco
    , cast(stateprovinceid as STRING) as idestadoprovincia	
    , cast(postalcode as STRING) as cep
    , cast(spatiallocation as STRING) as alocacaoespac
from {{ source('erp', 'address') }}
)
select     
*
from tb_address