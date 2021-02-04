select * from tb_transaction_order tto 
left join tb_transaction_promotion_process ttpp 
on tto.tbto_id = ttpp.tbto_id 
left join tb_transaction_order_product ttop 
on ttop.tbto_id = tto.tbto_id
where tto.tbto_create_date between '2020-10-01' and '2021-02-04'


select * from tb_transaction_order_product 
where tbtop_create_date between '2021-01-01' and '2021-02-01'
order by tbtop_create_date desc


select * from tb_transaction_promotion_process ttpp 
where tbtpp_create_date between '2021-01-01' and '2021-02-01'
--and ttpp.tbtpp_juklak is null 
and ttpp.tbto_id is not null