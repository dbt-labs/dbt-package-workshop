{#- Use in a dbt Cloud scratchpad with the 'Compile' button -#}

{{ 
    codegen.generate_base_model(
        source_name='jaffle_shop',
        table_name='supplies'
    )
}}