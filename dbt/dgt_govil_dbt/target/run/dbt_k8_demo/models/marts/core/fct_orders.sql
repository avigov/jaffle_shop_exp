
  
    

    create or replace table `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`fct_orders`
    
    
    OPTIONS()
    as (
      with orders as  (
    select * from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_orders`
),

payments as (
    select * from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_payments`
),

order_payments as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount

    from payments
    group by 1
),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        coalesce(order_payments.amount, 0) as amount

    from orders
    left join order_payments using (order_id)
)

select * from final
    );
  