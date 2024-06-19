with churn_data as (
    select *
    from {{ source('semantics', 'churn_data') }}
)
select * from churn_data