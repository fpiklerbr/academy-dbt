with tb_salesperson as(
SELECT 
      cast(businessentityid AS int) as idvendedor		
    , cast(territoryid as int) as idterritorio
    , cast(salesquota as int) as cota_venda
    , cast(bonus	as int) as bonus_ent
    , cast(commissionpct as decimal) as perc_comissao	
    , cast(salesytd as decimal) as venda_ano_atual
    , cast(saleslastyear as decimal) as venda_ano_anterior
FROM {{ source('erp', 'salesperson') }}
)
select     
*
from tb_salesperson