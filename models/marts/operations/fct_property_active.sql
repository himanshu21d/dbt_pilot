with active as (
    select id, 
    name,
    CURRENT_DATE - created_at::date AS active_days
    from {{ref('stg_airbnb__rawhosts')}}
)
select * from active