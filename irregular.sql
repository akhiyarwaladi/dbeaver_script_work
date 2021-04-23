-- check if voucher has been used more than 1 times

select tbto_voucher_code, count (tbto_no)as voucher_used 
from tb_transaction_order tto 
where tbto_voucher_code not in ('') and date(tbto_create_date) >= date(now()) - interval '10 Day'
and tbto_status not in ('18','10','11')
group by tbto_voucher_code having count(tbto_no) >= 2;
order by voucher_used desc


-- check if there is a price deducted more than minimum purchase quantity


-- check if delivery status is 15 but order status stop in less than 15

select tto_ttd.tbto_no, tto_ttd.tbtd_no, max(tto_ttd.tbto_status) as max_order_status, 
max(tto_ttd.tbtds_status) as max_delivery_status
from(
	select tto.tbto_create_date, tto.tbto_no, ttd.tbtd_no, tto.tbto_status, ttds.tbtds_status 
	from tb_transaction_order tto
	left join tb_transaction_delivery ttd 
	on tto.tbto_id = ttd.tbto_id 
	left join tb_transaction_delivery_status ttds 
	on ttd.tbtd_id = ttds.tbtd_id 
	where date(tbto_create_date) >= date(now()) - interval '10 Hour'
	and ttds.tbtds_status is not null 
) as tto_ttd
group by tto_ttd.tbto_no, tto_ttd.tbtd_no
--where cast(tto_ttd.tbto_status as integer) < 15 and 
--cast(tto_ttd.tbtds_status as integer) = 15


----- check item get discount when min purchase qty req not meet

-- check unit discount of each product bought in promotion process
select tto.tbto_create_date, tto.tbto_id, tto.tbto_no, tto.tbto_status, ttpp.tbtpp_type, ttpp.tbtpp_name, ttpp.tbmp_id,
ttpp.tbtpp_qty, tto.tbto_amount_final, ttd.tbtd_no, ttpp.tbtpp_disc_amount, ttpp.tbtpp_unit_discount, ttpp.tbtpp_invoice 
from tb_transaction_order tto
left join tb_transaction_delivery ttd 
on tto.tbto_id = ttd.tbto_id
left join tb_transaction_promotion_process ttpp 
on tto.tbto_id = ttpp.tbto_id 
where tto.tbto_create_date between '2021-04-07 09:00:00' and '2021-04-08 12:00:00' 
and ttpp.tbtpp_type = '201'
order by tto.tbto_create_date asc

-- join this with invoice with promo stl
-- if tbtpp_qty less than tbmproi_min_purchase_qty
------

select * from tb_transaction_order tto 
left join tb_transaction_delivery ttd
on tto.tbto_id = ttd.tbto_id 
where ttd.tbtd_no = 'S-210407-AGVTMKQ'


