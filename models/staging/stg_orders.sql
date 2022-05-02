with orders as (select  o_orderkey order_id,
                        o_custkey customer_id,
                        o_totalprice price,
                        o_orderdate order_date,
                        o_orderpriority priorities
        from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.orders)
select * from orders