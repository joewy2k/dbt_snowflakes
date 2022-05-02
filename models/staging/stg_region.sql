with region as (select  r_regionkey region_id,
        r_name region
        from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.REGION)
select * from region