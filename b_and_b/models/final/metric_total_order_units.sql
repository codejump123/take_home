select * 
from {{ metrics.calculate(
    metric('total_order_units'),
    grain='day',
    dimensions=['order_created_at','product_category','product_title','product_variant_sku','product_variant_style','product_variant_size']
) }}