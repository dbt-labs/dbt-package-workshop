
with source as (

    select * from {{ source('coffee_shop', 'customers') }}

),

renamed as (

    select
        value,
        id,
        name

    from source

)

select * from renamed
