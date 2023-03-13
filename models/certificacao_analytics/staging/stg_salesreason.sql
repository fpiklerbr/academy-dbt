with tb_salesreason as(
select 
      cast(salesreasonid as STRING) as idrazaovenda		
    , cast(name as string) as nomerazaovenda
    , cast(reasontype as string) as tiporazaovenda
from {{ source('erp', 'salesreason') }}
)
select     
*
from tb_salesreason
