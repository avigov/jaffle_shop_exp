

  create or replace view `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_payments`
  OPTIONS()
  as select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at

from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop`.`payment`;

