
    
    

with dbt_test__target as (

  select order_id as unique_field
  from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_orders`
  where order_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


