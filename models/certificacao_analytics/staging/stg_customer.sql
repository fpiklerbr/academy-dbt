with tb_customer as(
SELECT 
      cast(customerid as int) as idcliente
    , cast(personid as int) as fk_person
    , cast(storeid as int) as fk_store
    , cast(territoryid as int) as fk_territory
FROM {{ source('erp', 'customer') }}
)
select     
*
from tb_customer
