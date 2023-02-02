

  create or replace view `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_customers`
  OPTIONS()
  as select
    id as customer_id,
    first_name,
    last_name

from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop`.`customers`;

