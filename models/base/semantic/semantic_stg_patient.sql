with patient as (
    select *
    from {{ source('semantics', 'patient_data') }}
), 

appt as (
    select *
    from {{ source('semantics', 'appt_data') }}
),

stg_patients as (
    select * 
    from patient 
    left join appt using (patient_id)
)
select * from stg_patients