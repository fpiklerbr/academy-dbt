with tb_customer as(
SELECT 
      cast(customerid as STRING) as idcliente
    , cast(personid as STRING) as idpessoa
    , cast(storeid as int) as idloja
    , cast(territoryid as int) as idterritorio
FROM {{ source('erp', 'customer') }}
)
select     
*
from tb_customer
