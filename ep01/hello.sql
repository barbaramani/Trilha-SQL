 SELECT product_id,
       product_category_name,
       product_photos_qty



 from tb_products

 WHERE ( product_category_name = 'bebes'
 or product_category_name = 'perfumaria')

and product_photos_qty > 1