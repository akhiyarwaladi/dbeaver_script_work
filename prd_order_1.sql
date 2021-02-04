SELECT * 
FROM tb_transaction_order tto
LEFT JOIN tb_transaction_promotion_process ttpp
on tto.tbto_id = ttpp.tbto_id
where tto.tbto_create_date >= '2020-01-01'
and tto.tbto_create_date <= '2020-08-01'
and ttpp.tbtpp_juklak = 'SAT://20237/JKK/SAT-SPRM/XI/20'
order by tto.tbto_create_date asc



select ttp.tbtp_transaction_id, tto.tbto_amount_final, ttp.tbtp_ponta_amount, tmp.tbmp_in, tmp.tbmp_id, tto.tbto_no, ttp.tbtp_create_date, tto.tbto_create_date 
from tb_transaction_payment ttp 
left join tb_transaction_order tto 
on ttp.tbto_id = tto.tbto_id 
left join tb_master_payment tmp 
on ttp.tbmp_id = tmp.tbmp_id
where ttp.tbtp_create_date >= '2020-12-14'
and ttp.tbtp_create_date <= '2020-12-15'
-- and ttp.tbmp_id = 33
and ttp.tbtp_status = 47
and tto.tbto_no = 'O-201214-AGPZHSW'
--and tto.tbto_amount_final  = 99202
and ttp.tbtp_ponta_amount is not null
order by ttp.tbtp_create_date asc

select * from tb_transaction_payment ttp 
left join tb_transaction_order tto 
on ttp.tbto_id = tto.tbto_id
left join tb_transaction_order_product ttop 
on tto.tbto_id = ttop.tbto_id 
where tbtp_transaction_id = 'T-201202-BBRHM'

select tbto_no, tbto_amount_final from 
tb_transaction_order tto
--left join tb_transaction_order_product ttop
--on tto.tbto_id = ttop.tbto_id 
where tbto_no in ('O-201202-AGZFPVJ',
'O-201202-AGYVLPP',
'O-201202-AGFTVXD',
'O-201202-AGMSBRD',
'O-201202-AGHRGFQ',
'O-201202-AGHYDRF');


select * 
from tb_transaction_payment ttp 
where ttp.tbtp_transaction_id = 'T-201229-FNKQZ'



select ttp.tbtp_transaction_id, tto.tbto_amount_final, ttp.tbtp_id, tto.tbto_id, ttp.tbtp_ponta_amount, tmp.tbmp_in, tto.tbto_status, ttp.tbtp_status, tmp.tbmp_id, tto.tbto_no, ttp.tbtp_create_date, tto.tbto_create_date, tto.tbto_update_date
from tb_transaction_payment ttp 
left join tb_transaction_order tto 
on ttp.tbto_id = tto.tbto_id 
left join tb_master_payment tmp 
on ttp.tbmp_id = tmp.tbmp_id
where ttp.tbtp_update_date >= '2021-01-28'
and ttp.tbtp_update_date <= '2021-01-29'
--and ttp.tbtp_status = 47
and ttp.tbmp_id = 33
--and ttp.tbtp_transaction_id = 'T-201230-GNFRF'
and ttp.tbtp_transaction_id = 'T-210128-KTQPV'
--and tto.tbto_no = 'O-210103-AGGWCGH'
order by ttp.tbtp_create_date asc




select * 
from tb_transaction_order tto 
where tto.tbto_no = 'T-210110-XXDGW	O-210110-AGHMNTP'

select *
from tb_transaction_payment ttp 
where ttp.tbtp_transaction_id = 'T-201230-GNFRF'

select * from 
tb_transaction_delivery ttd 
where ttd.tbto_id = 1701392


select * from tb_transaction_payment ttp 
where ttp.tbto_id = 1871332



select * from tb_transaction_order tto 
where tto.tbto_create_date > '2020-10-01' 
and tto.tbto_create_date  < '2021-01-15'
and tto.tbto_status = 15
and tto.tbto_ponta_id = '9990013145655650'

select tbtop_create_date, tbto_id, tbtop_product_name from tb_transaction_order_product ttop 
where ttop.tbto_id = 1512285




select tbtds_id, ttds.tbtd_id, tbtds_create_date, tbtd_method, tbtd_delivery_store, tbtds_status from tb_transaction_delivery_status ttds 
left join tb_transaction_delivery ttd
on ttds.tbtd_id = ttd.tbtd_id 
where tbtds_create_date between '2021-01-01' and '2021-01-21'
order by tbtds_create_date asc


select tbtds_id, ttds.tbtd_id, ttd.tbto_id, tbtds_create_date, tbtds_update_date, tbtds_status, tms.tbms_en from tb_transaction_delivery_status ttds 
left join tb_master_status tms 
on tms.tbms_id = ttds.tbtds_status 
left join tb_transaction_delivery ttd 
on ttd.tbtd_id = ttds.tbtd_id 
---- pickup order (298 instances) below sample
-- where ttds.tbtd_id = 2201067
-- where ttds.tbtd_id = 4335939
--where ttds.tbtd_id = 4441613
---- deliv order (27511 instances) below sample
-- where ttds.tbtd_id = 4318854
--where ttds.tbtd_id = 4326289
---- too fast
where ttds.tbtd_id = 3926143


select * from tb_transaction_order_product ttop 
where ttop.tbtop_create_date between '2020-02-01' and '2020-02-02'
--and tbmp_id is null

select * from tb_master_product tmp 
where tmp.tbmp_id = 13856

select * from tb_transaction_order tto 
left join tb_transaction_promotion_process ttpp 
on tto.tbto_id = ttpp.tbto_id 
left join tb_transaction_order_product ttop 
on ttop.tbto_id = tto.tbto_id
where tto.tbto_create_date between '2020-10-01' and '2021-02-04'
and ttpp.tbtpp_juklak is not null

select * from tb_master_product tmp 
where tmp.tbmp_id = 659862












