with tb_product as(
SELECT 
      cast(productid as INTEGER) as idproduto
    , cast(name as STRING) as nomeproduto
    , cast(productnumber as STRING) as numproduto							
    , cast(standardcost as decimal) as custoproduto
    , cast(listprice as decimal) as precolistagem
    , cast(productsubcategoryid as INTEGER) as subcatproduto
    , cast(productmodelid as INTEGER) as fkmodeloproduto
FROM {{ source('erp', 'product') }}
)
select     
*
from tb_product