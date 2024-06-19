with finance_data as (
    select *
    from {{ source('semantics', 'finance_data') }}
)
select * from finance_data