with tb_customer as(
SELECT 
      cast(customerid as int) as idcliente
    , cast(personid as int) as idpessoa
    , cast(storeid as int) as idloja
    , cast(territoryid as int) as idterritorio
FROM {{ source('erp', 'customer') }}
)
select     
*
from tb_customer
