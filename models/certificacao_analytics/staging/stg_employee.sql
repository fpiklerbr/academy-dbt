with tb_employee as(
    SELECT 	
      cast(businessentityid as INTEGER) as fk_entidade			
    , cast(nationalidnumber as INTEGER) as pk_colaborador
    , cast(loginid as STRING) as login_colaborador
    , cast(jobtitle as STRING) as cargo_colaborador
    , date(birthdate) as data_nascimento
    , cast(maritalstatus as STRING) as estado_civil		
    , cast(gender as STRING) as genero			
    , date(hiredate) as data_admissao
    , cast(salariedflag as BOOLEAN) as mensalista_horista		
    , cast(vacationhours as INTEGER) as horas_ferias
    , cast(sickleavehours as INTEGER) as horas_afastamento	
    , cast(organizationnode as STRING) as org_node
FROM {{ source('erp', 'employee') }}
)
select     
*
from tb_employee
