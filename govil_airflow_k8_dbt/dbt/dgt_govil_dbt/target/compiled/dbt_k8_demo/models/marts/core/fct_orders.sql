with orders as (
    select * from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_orders`
),

payments as (
    select * from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_payments`
),

order_payments as (
    select
        orders.customer_id,
        payments.order_id,
        orders.order_date,
        sum(case when payments.status='success' then payments.amount end) as amount

    from orders left join payments using (order_id)
    group by 1,2,3
)

select * from order_payments