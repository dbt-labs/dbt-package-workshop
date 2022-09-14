
with source as (

    select * from {{ source('jaffle_shop', 'products') }}

),

renamed as (

    select
        sku as product_id,
        name as product_name,
        type as product_type,
        description,
        (price / 100)::float as price,
        value as product_data,

        case
            when type = 'jaffle' then 1
            else 0
        end is_food_item,

        case
            when type = 'beverage' then 1
            else 0
        end is_drink_item

    from source

)

select * from renamed
