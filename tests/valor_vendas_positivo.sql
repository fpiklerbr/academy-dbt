SELECT  
    idvenda
    ,sum(preco_un) as preco
FROM  {{ ref('fato_vendas') }} 
group by idvenda
having not(preco>0)