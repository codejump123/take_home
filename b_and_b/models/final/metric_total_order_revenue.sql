select * 
from {{ metrics.calculate(
    metric('total_gross_revenue'),
    grain='day',
    dimensions=['product_category','product_title','product_variant_sku','product_variant_style','product_variant_size']
) }}