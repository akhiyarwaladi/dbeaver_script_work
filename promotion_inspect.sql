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
and ttpp.tbto_id is not NULL


select tto.tbto_no, tto.tbto_ponta_id, count(tto.tbto_ponta_id), ttpp.tbtpp_disc_amount, ttop.tbtop_price, ttop.tbop_qty, tbto_create_date, ttop.tbtop_product_name, tbto_status, tbto_amount, tbto_discount, ttop.tbtop_discount,tbto_amount_final, tbto_ponta_point, tto.tbto_id from tb_transaction_order tto
left join tb_transaction_order_product ttop 
on tto.tbto_id = ttop.tbto_id 
left join tb_transaction_promotion_process ttpp 
on ttpp.tbto_id = tto.tbto_id
where tto.tbto_create_date between '2021-01-16 04:00:00' and '2021-01-16 06:30:00'
and tto.tbto_status = 18
group by tto.tbto_ponta_id


select * from (
select tto.tbto_ponta_id, count(tto.tbto_ponta_id) as count_lunas
from tb_transaction_order tto
where tto.tbto_create_date between '2021-01-16 04:00:00' and '2021-01-16 06:30:00'
and tto.tbto_status >= 12
and tto.tbto_status <= 15
group by tto.tbto_ponta_id
) as tb1
where count_lunas > 2
order by count_lunas desc


select * from tb_transaction_order tto 
where tto.tbto_create_date between '2021-01-16 04:00:00' and '2021-01-16 06:30:00'
and tto.tbto_ponta_id = '9990010491225100'


select * from tb_transaction_order tto 
where tto.tbto_voucher_code = 'A53999BA91NV'




select * from tb_transaction_order tto
where tto.tbto_create_date between '2021-04-22' and '2021-04-23'




-- check transaction paid by ponta id
select 
	ttp.tbtp_create_date, ttp.tbto_id, ttp.tbmp_id, ttp.tbtp_status, ttp.tbtp_transaction_id, ttp.tbtp_ponta_amount, 
	tto.tbto_amount_final, tbtp_transaction_id, tto.tbto_ponta_id, tto.tbto_no, tmp.tbmp_en, tms.tbms_en 
from tb_transaction_payment ttp 
	left join tb_transaction_order tto on ttp.tbto_id = tto.tbto_id
	left join tb_master_payment tmp on tmp.tbmp_id = ttp.tbmp_id 
	left join tb_master_status tms on tms.tbms_id = ttp.tbtp_status 
where 
	ttp.tbtp_create_date between '2021-04-01' and '2021-04-30'
	and tbtp_ponta_amount is not null
order by tto.tbto_no desc











