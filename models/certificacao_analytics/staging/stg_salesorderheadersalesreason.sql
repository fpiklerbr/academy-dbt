with tb_salesorderreason as(
SELECT 
      cast(salesorderid as int) as idvenda
    , cast(salesreasonid as int) as idrazaovenda
FROM {{ source('erp', 'salesorderheadersalesreason') }}
)
select     
*
from tb_salesorderreason