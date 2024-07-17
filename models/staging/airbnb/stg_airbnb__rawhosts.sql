with source as (
    select * from {{source('airbnb','raw_hosts')}}
),
hosts as (
    select id,name, is_superhost = 't' as is_superhost,
    created_at, updated_at
    from source
)
select * from hosts
