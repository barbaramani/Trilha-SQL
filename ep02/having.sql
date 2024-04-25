SELECT seller_city,
       count(*) as qtde_sellers

from tb_sellers

WHERE seller_state in ('SP', 'RJ', 'PR', 'AC')

GROUP by seller_state

HAVING qtde_sellers > 10 -- Remove os estados com menos de 10