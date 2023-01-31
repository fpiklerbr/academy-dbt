with razaovenda as (
SELECT
    *
FROM  {{ ref('stg_salesreason') }}   
)

SELECT
    pk_razaovenda		
    ,nome_razao_venda 
from razaovenda