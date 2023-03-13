with tb_product as(
SELECT 
      cast(productid as INTEGER) as pk_produto
    , cast(name as STRING) as nome_produto
    , cast(productnumber as STRING) as num_produto							
    , cast(standardcost as decimal) as custo_produto
    , cast(listprice as decimal) as preco_listagem
    , cast(productsubcategoryid as INTEGER) as subcat_produto
    , cast(productmodelid as INTEGER) as fk_modeloproduto
FROM {{ source('erp', 'product') }}
)
select     
*
from tb_product