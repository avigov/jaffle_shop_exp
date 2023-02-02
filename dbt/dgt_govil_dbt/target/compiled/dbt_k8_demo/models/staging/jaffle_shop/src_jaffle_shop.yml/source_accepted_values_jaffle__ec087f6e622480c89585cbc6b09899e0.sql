
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `dgt-gcp-egov-test-govilbi-0`.`jaffle_shop`.`orders`
    group by status

)

select *
from all_values
where value_field not in (
    'completed','shipped','returned','return_pending','placed'
)

