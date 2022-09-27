select 
    *
from {{
    metrics.calculate(
        metric('average_order_profit_pct'),
        grain='month',
        dimensions=['is_drink_order']
    )
}}