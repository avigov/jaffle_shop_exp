select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop`.`customers`
where id is null



      
    ) dbt_internal_test