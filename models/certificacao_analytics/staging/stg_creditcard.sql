with tb_creditcard as(
SELECT 	
      cast(creditcardid as INTEGER) AS idcartaocredito		
    , cast(cardtype as STRING) as tipocartaocredito
FROM {{ source('erp', 'creditcard') }}
)
select * from tb_creditcard