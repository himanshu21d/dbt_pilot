with listing as (
    select * from {{ref('stg_airbnb__listings')}}
),
reviews as (
    select * from {{ref('stg_airbnb__reviews')}}
),
revenue as (
    select name, 
    replace(minimum_nights::text,'0','1')::float * price * count(reviews.listing_id) OVER (PARTITION BY reviews.listing_id) as revenue
    from listing left join reviews on reviews.listing_id = listing.id
)
select * from revenue