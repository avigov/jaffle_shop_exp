

  create or replace view `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`my_first_dbt_model`
where id = 1;

