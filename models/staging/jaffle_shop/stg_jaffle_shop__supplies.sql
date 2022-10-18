
with source as (

    select * from {{ source('jaffle_shop', 'supplies') }}

),

renamed as (

    select
        value,
        id,
        name,
        cost,
        perishable,
        sku

    from source

)

select * from renamed
