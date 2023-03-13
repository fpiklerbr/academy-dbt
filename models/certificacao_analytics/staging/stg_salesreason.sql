with tb_salesreason as(
SELECT 
      cast(salesreasonid as int) as pk_razaovenda		
    , cast(name as string) as nome_razao_venda
    , cast(reasontype as string) as tipo_razao_venda
FROM {{ source('erp', 'salesreason') }}
)
select     
*
from tb_salesreason
