
with source as (

    select * from {{ source('jaffle_shop', 'locations') }}

),

renamed as (

    select
        id as location_id,
        name as location_name,
        tax_rate,
        opened_at,
        value as location_data

    from source

)

select * from renamed
