select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
select
  order_id,
	sum(amount) as total_amount
from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_payments`
group by 1
having not(total_amount >= 0)
      
    ) dbt_internal_test