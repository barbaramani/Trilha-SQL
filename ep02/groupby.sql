SELECT 
       product_category_name,
       count(*) as qnt_produto,
       max(product_weight_g) as maior_peso,
       min(product_weight_g) as menor_peso,
       avg(product_weight_g) AS media_peso

from tb_products

WHERE product_category_name is not NULL
and product_category_name != 'alimentos'
and product_category_name <> 'agro_industria_e_comercio'

group BY product_category_name 