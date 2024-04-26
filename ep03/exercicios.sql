SELECT product_category_name,
       avg(product_description_lenght) as  tam_medio_descricao,
       max(product_description_lenght) as maximo,
       min(product_description_lenght) as minimo

FROM tb_products

GROUP BY product_category_name

LIMIT 2;

---------

SELECT product_category_name,
       avg(product_name_lenght) as  tam_medio_nome,
       max(product_name_lenght) as maximo,
       min(product_name_lenght) as minimo

FROM tb_products

GROUP BY product_category_name

LIMIT 2;


----------

SELECT product_category_name,
     avg(product_name_lenght) as  tam_medio_nome,
     max(product_name_lenght) as maximo,
     min(product_name_lenght) as minimo

FROM tb_products

WHERE product_description_lenght >=100

GROUP BY product_category_name

LIMIT 1;
-- primeiro filtra (where) e depois agrupa (groupby)

----------

SELECT product_category_name,
     avg(product_name_lenght) as  tam_medio_nome,
     max(product_name_lenght) as maximo,
     min(product_name_lenght) as minimo

FROM tb_products

WHERE product_description_lenght > 100 

GROUP BY product_category_name

HAVING avg(product_description_lenght) > 500

order by avg(product_name_lenght) desc;

