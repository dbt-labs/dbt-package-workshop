
with source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (

    select
        id as order_id,
        location_id,
        customer_id,
        order_total,
        tax_paid,
        ordered_at,
        value as order_data

    from source

)

select * from renamed
