with listing as (
    select * from {{ref('stg_airbnb__listings')}}
),
reviews as (
    select * from {{ref('stg_airbnb__reviews')}}
),
revenue as (
    select name, 
    minimum_nights * price * count(r.listing_id) OVER (PARTITION BY r.listing_id) as revenue
    from listing left join reviews on reviews.listing_id = listing.id
)
select * from revenue