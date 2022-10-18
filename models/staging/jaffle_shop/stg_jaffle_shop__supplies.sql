
{#
{{
    codegen.generate_base_model(
        source_name='jaffle_shop',
        table_name='supplies'
    )
}}
#}

with source as (

    select * from {{ source('jaffle_shop', 'supplies') }}

),

renamed as (

    select

        ----------  ids
        {{ dbt_utils.surrogate_key(['id', 'sku']) }} as supply_uuid,
        id as supply_id,
        sku as product_id,

        ---------- properties
        name as supply_name,
        (cost / 100.0)::float as supply_cost,
        perishable as is_perishable_supply

    from source

)

select * from renamed