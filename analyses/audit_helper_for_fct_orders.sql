{#- Use in a dbt Cloud scratchpad with the 'Preview' button -#}

{%- set query_prod -%}

  select * from  checkpoint_1.fct_orders

{%- endset -%}

{%- set query_dev -%}

  select {{ dbt_utils.star(from=ref('fct_orders'), except=['order_cost']) }} from {{ ref('fct_orders') }}

{%- endset -%}

{#- Toggle summarize to view summary or detailed view of compared data -#}
{{
    audit_helper.compare_queries(
        a_query=query_prod,
        b_query=query_dev,
        primary_key="order_id",
        summarize=True   
    )
}}
