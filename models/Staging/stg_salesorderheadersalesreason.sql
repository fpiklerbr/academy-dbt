with tb_salesorderreason as(
SELECT 
    CAST(salesorderid as int) as pk_idvenda
    ,cast(salesreasonid as int) as sk_razaovenda
FROM {{ source('erp', 'salesorderheadersalesreason') }}
)
select     
*
from tb_salesorderreason