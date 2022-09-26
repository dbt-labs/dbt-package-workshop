select 
    *
from {{
    metrics.calculate(
        metric('average_profit'),
        grain='month',
        dimensions=['is_drink_order']
    )
}}