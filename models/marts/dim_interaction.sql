with dim_int as (
    select 
        patient_id,
        support_tickets as tickets_count,
        feedback as comments
    from {{ ref('semantic_stg_usage_int') }}
)
select * from dim_int