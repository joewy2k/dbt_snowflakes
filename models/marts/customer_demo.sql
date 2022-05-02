with customers as (
    select * from {{ref('stg_customer')}}
),

region as (
    select * from {{ref('stg_region')}}
),

country as (
    select * from {{ref('stg_country')}}
),

orders as (
    select * from {{ref('stg_orders')}}
),

customer_order as (
    select  
            customer_id,
            min(order_date) first_order_date,
            max(order_date) last_order_date,
            round(sum(price/100),2) total_expenditure_usd,
            count(order_id) as total_order
            from  orders
            group by  customer_id
),
final as (
    select c.country,
            count(c.customer_id)
            from country c 
            inner join customers r on c.country_id = r.country_id
            group by c.country


)
select * from final
limit 10