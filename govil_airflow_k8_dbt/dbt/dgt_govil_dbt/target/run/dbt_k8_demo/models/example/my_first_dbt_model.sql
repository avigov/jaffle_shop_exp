
  
    

    create or replace table `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`my_first_dbt_model`
    
    
    OPTIONS()
    as (
      /*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



with source_data as (

    select 5 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
    );
  