
with source as (

    select * from {{ source('coffee_shop', 'order_items') }}

),

renamed as (

    select
        value,
        id,
        order_id,
        sku

    from source

)

select * from renamed
