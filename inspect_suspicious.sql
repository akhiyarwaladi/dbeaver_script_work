select * from tb_transaction_order 
where tbto_no = 'O-201202-AGFPPYK'

select * from tb_transaction_order_product ttop 
where tbto_id = 1442030

select * from tb_transaction_promotion_process ttpp 
where ttpp.tbto_id = 1442030

select tbto_create_date, tto.tbto_id, ttd.tbms_id, tbto_no, tbto_amount, tbto_amount_final, tbto_discount, tbto_status from tb_transaction_order tto 
left join tb_transaction_delivery ttd 
on tto.tbto_id  = ttd.tbto_id 
where tbto_create_date between '2020-01-15' and '2021-01-17'
and tbto_amount < tbto_discount 
--and tbto_no = 'O-201202-AGFPPYK'
order by tbto_create_date 





select count(tto.tbto_discount) from tb_transaction_order tto 
left join tb_transaction_delivery ttd 
on tto.tbto_id = ttd.tbto_id
left join tb_transaction_order_product ttop 
on tto.tbto_id = ttop.tbto_id 
--where tbtd_no = 'S-201124-AGJZDNB'
where tbto_ponta_id = '9999990084513349'
and tbtop_create_date between '2020-11-24' and '2020-11-25'
--and tto.tbto_discount = 0


select * 
from tb_transaction_order tto 
where tbto_create_date between '2020-08-01' and '2021-02-01'
order by tbto_create_date asc




