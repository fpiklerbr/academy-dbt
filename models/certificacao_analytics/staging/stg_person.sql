with tb_person as(
SELECT 	
      cast(businessentityid as INTEGER) as idpessoa				
    , cast(persontype as STRING) as tipo_entidade
    , cast(namestyle as BOOLEAN) as estilo_nome
    , cast(title as STRING) as cargo_nome
    , cast(firstname as STRING) as primeiro_nome	
    , cast(middlename as STRING) as nome_meio
    , cast(lastname as STRING) as ultimo_sobrenome
    , cast(suffix as STRING) as sufixo
    , cast(emailpromotion as INTEGER) as promocao_email			
    , cast(additionalcontactinfo as STRING) as informacao_adic	
    , cast(firstname || " " || lastname as string) as nome_completo 
FROM {{ source('erp', 'person') }}
)
select     
*
from tb_person
