select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop`.`orders`