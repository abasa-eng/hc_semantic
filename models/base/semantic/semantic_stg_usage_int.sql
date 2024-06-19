with usage_data as (
    select *
    from {{ source('semantics', 'usage_data') }}
),

int_data as (
    select *
    from {{ source('semantics', 'interactions_data') }}
),

final as (
    select *
    from usage_data
    left join int_data using (patient_id)
)
select * from final