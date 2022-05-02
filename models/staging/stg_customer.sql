with customer as (select  c_custkey customer_id, 
        c_nationkey country_id, 
        c_mktsegment market_segment 
        from snowflake_sample_data.tpch_sf10.customer)
select * from customer
