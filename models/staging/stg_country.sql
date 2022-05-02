with country as (select  n_nationkey country_id,
        n_name country,
        n_regionkey region_id
        from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.NATION)
select * from country