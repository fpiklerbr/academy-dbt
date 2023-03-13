with tb_address as(
select 
      cast(addressid as INTEGER) as idendereco		
    , cast(addressline1 as STRING) as enderecolinha1
    , cast(addressline2 as STRING) as enderecolinha2
    , cast(city as STRING) as cidade_endereco
    , cast(stateprovinceid as INTEGER) as fk_estadoprovincia	
    , cast(postalcode as STRING) as cep
    , cast(spatiallocation as STRING) as alocacaoespac
from {{ source('erp', 'address') }}
)
select     
*
from tb_address