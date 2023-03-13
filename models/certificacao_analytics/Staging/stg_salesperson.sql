with tb_salesperson as(
SELECT 
    CAST(businessentityid AS int) as pk_entidadebusiness			
    ,CAST(territoryid as int) as fk_territorio
    ,CAST(salesquota as int) as cota_venda
    ,CAST(bonus	as int) as bonus_ent
    ,CAST(commissionpct as decimal) as perc_comissao	
    ,CAST(salesytd as decimal) as venda_ano_atual
    ,CAST(saleslastyear as decimal) as venda_ano_anterior
FROM {{ source('erp', 'salesperson') }}
)
select     
*
from tb_salesperson