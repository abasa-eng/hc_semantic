with dim_usage as (
    select 
        patient_id,
        portal_logins as logins,
        telehealth_sessions as virtual_appointment
    from {{ ref('semantic_stg_usage_int') }}
)
select * from dim_usage