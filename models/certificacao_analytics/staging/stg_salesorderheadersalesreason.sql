with tb_salesorderreason as(
SELECT 
      cast(salesorderid as STRING) as idvenda
    , cast(salesreasonid as STRING) as idrazaovenda
FROM {{ source('erp', 'salesorderheadersalesreason') }}
)
select     
*
from tb_salesorderreason