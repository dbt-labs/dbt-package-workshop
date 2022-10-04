select 
    *
from {{
    metrics.calculate(
        metric('average_order_cost'),
        grain='month',
        dimensions=['is_drink_order']
    )
}}