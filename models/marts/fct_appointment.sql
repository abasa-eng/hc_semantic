with fct_appt as (
    select 
        row_number () over (order by appointment_date) as appointment_id,
        patient_id, appointment_date,
        appointment_type, doctor_id
    from {{ ref('semantic_stg_patient') }}
)
select * from fct_appt