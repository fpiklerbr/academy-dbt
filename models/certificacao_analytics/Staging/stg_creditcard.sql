with tb_creditcard as(
SELECT 	
    cast(creditcardid as INTEGER) AS id_cartaocredito			
    ,cast(cardtype as STRING) as tipo_cartaocredito
FROM {{ source('erp', 'creditcard') }}
)
select * from tb_creditcard