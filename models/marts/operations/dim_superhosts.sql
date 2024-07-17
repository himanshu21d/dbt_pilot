with superhost as (
    select id,name from {{ref('stg_airbnb__rawhosts')}}
    where is_superhost
)
select * from superhost