with 

orders as (

    select * from {{ ref('stg_jaffle_shop__orders') }}

),

order_items as (

    select * from {{ ref('stg_jaffle_shop__order_items') }}

),

products as (

    select * from {{ ref('stg_jaffle_shop__products') }}

),

locations as (

    select * from {{ ref('stg_jaffle_shop__locations') }}

),

supplies as (

    select * from {{ ref('stg_jaffle_shop__supplies') }}

),


order_items_summary as (

    select
        order_id,

        sum(products.is_food_item) as count_food_items,
        sum(products.is_drink_item) as count_drink_items,
        count(*) as count_items,

        sum(case when products.is_food_item = 1 then price else 0 end) as subtotal_drink_items,
        sum(case when products.is_drink_item = 1 then price else 0 end) as subtotal_food_items,
        sum(price) as subtotal

    from order_items
    inner join products 
        on order_items.product_id = products.product_id

    group by 1

),

<<<<<<< HEAD
order_supplies_summary as (

    select
        order_id,
    
        sum(supplies.supply_cost) as order_cost

    from order_items
    inner join supplies 
        on supplies.product_id = order_items.product_id
    
    group by 1

),

=======
>>>>>>> a701b13 (Remove second join example)
joined as (

    select
        orders.*,

        order_items_summary.count_food_items,
        order_items_summary.count_drink_items,
        order_items_summary.count_items,

        order_items_summary.subtotal_drink_items,
        order_items_summary.subtotal_food_items,
        order_items_summary.subtotal,

        order_supplies_summary.order_cost,

        -- rank this order for the customer
        row_number() over (
            partition by orders.customer_id
            order by orders.ordered_at
        ) as customer_order_index,

        locations.location_name

    from orders
    inner join order_items_summary 
        on orders.order_id = order_items_summary.order_id
    inner join locations 
        on orders.location_id = locations.location_id
<<<<<<< HEAD
    inner join order_supplies_summary
        on orders.order_id = order_supplies_summary.order_id
=======
>>>>>>> a701b13 (Remove second join example)

),

final as (

    select *,
        customer_order_index = 1 as is_first_order,
        count_food_items > 0 as is_food_order,
        count_drink_items > 0 as is_drink_order

    from joined

)

select * from final