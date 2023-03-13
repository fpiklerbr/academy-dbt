with tb_salesorderreason as(
SELECT 
      cast(salesorderid as int) as pk_idvenda
    , cast(salesreasonid as int) as fk_razaovenda
FROM {{ source('erp', 'salesorderheadersalesreason') }}
)
select     
*
from tb_salesorderreason