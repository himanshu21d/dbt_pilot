with listing as (
    select ID , 
    listing_url, 
    name, 
    room_type, 
    minimum_nights,
    host_id,
    replace(price, '$','')::float price,
    created_at,
    updated_at
    from {{source('airbnb','raw_listings')}}
)
select * from listing
