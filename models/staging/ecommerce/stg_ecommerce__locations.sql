
with source as (

    select * from {{ source('coffee_shop', 'locations') }}

),

renamed as (

    select
        value,
        id,
        name,
        opened_at,
        tax_rate

    from source

)

select * from renamed
