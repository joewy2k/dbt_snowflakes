with customers as (
    select * from {{ref('stg_customer')}}
),

orders as (
    select * from {{ref('stg_orders')}}
),

cust_order as (
    select 
            c.market_segment,
            count(o.customer_id),
            round(sum(o.price/100), 2) ext_purchase_usd
    from customers c
    inner join orders o using(customer_id)
    group by 
            c.market_segment
)
select * from cust_order