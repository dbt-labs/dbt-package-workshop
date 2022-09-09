
with source as (

    select * from {{ source('coffee_shop', 'orders') }}

),

renamed as (

    select
        value,
        id,
        location_id,
        customer_id,
        ordered_at,
        order_total,
        tax_paid

    from source

)

select * from renamed
