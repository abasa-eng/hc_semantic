with fct_patient as (
    select 
        patient_id, age, start_date,
        gender,address, medical_history
    from {{ ref('semantic_stg_patient') }}
)
select * from fct_patient