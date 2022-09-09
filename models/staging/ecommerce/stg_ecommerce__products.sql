
with source as (

    select * from {{ source('coffee_shop', 'products') }}

),

renamed as (

    select
        value,
        sku,
        name,
        type,
        description,
        price

    from source

)

select * from renamed
