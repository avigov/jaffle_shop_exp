with customers as (
    select * from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`stg_customers`
),

order_payments as (
    select * from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop_Avigail`.`fct_orders`
),

customer_orders as (
    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(distinct order_id) as number_of_orders,
        sum(amount) as total_lifetime_value

    from order_payments
    group by 1
),

final as (
    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders,
        customer_orders.total_lifetime_value
    from customers
    left join customer_orders using (customer_id)
)

select * from final