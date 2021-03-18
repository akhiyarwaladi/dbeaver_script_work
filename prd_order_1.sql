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
where ttp.tbtp_update_date >= '2021-03-01'
and ttp.tbtp_update_date <= '2021-03-03'
and ttp.tbtp_status in (46, 47,48)
--and ttp.tbmp_id = 33
--and ttp.tbtp_transaction_id = 'T-201230-GNFRF'
and ttp.tbtp_transaction_id = 'T-210301-TVFBG'
--and tto.tbto_no = 'O-210218-AGZJDBR'
order by ttp.tbtp_create_date asc


select * from tb_transaction_delivery_status ttds
left join tb_transaction_delivery ttd
on ttds.tbtd_id = ttd.tbtd_id 
left join tb_transaction_order tto 
on tto.tbto_id = ttd.tbto_id 
where tto.tbto_no = 'O-210301-AGHYLVL'

select * 
from tb_transaction_order tto 
where tto.tbto_no = 'T-210110-XXDGW	O-210110-AGHMNTP'

select *
from tb_transaction_payment ttp 
where ttp.tbtp_transaction_id = 'T-201230-GNFRF'

select * from tb_transaction_order tto 
where tbto_id = 2498318

select * from 
tb_transaction_delivery ttd 
where ttd.tbto_id = 2498318


select * from tb_transaction_payment ttp 
where ttp.tbto_id = 2498318



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
where tmp.tbmp_id = 56317


select 






select * from tb_transaction_order tto 
where tto.tbto_ponta_id = '9999990112869231'
and tto.tbto_create_date between '2020-11-01' and '2020-11-30'
order by tto.tbto_create_date desc


SELECT *
FROM tb_transaction_order tto 
WHERE tto.tbto_create_date >= NOW() - INTERVAL '1 HOURS'
ORDER BY tto.tbto_create_date ASC



select ttp.tbtp_transaction_id, tto.tbto_amount_final, ttp.tbtp_ponta_amount, tmp.tbmp_in, tmp.tbmp_id, tto.tbto_no, ttp.tbtp_create_date, tto.tbto_create_date 
from tb_transaction_payment ttp 
left join tb_transaction_order tto 
on ttp.tbto_id = tto.tbto_id 
left join tb_master_payment tmp 
on ttp.tbmp_id = tmp.tbmp_id
left join tb_transaction_delivery ttd 
on ttd.tbto_id = tto.tbto_id 
left join tb_transaction_delivery_status ttds 
on ttds.tbtd_id  = ttd.tbtd_id 
where ttp.tbtp_create_date >= '2021-03-09'
and ttp.tbtp_create_date <= '2021-03-11'
and ttp.tbtp_transaction_id = 'T-210309-JYBPB'
and ttp.tbtp_status in (47,48)
and ttds.tbtds_status > 11
order by ttp.tbtp_create_date asc



select * from tb_master_store tms 
where tms.tbmstr_store_id = '1A06'



select ttop.tbtop_create_date, ttop.tbtop_product_name, ttop.tbop_qty from tb_transaction_order tto 
left join tb_transaction_order_product ttop 
on tto.tbto_id = ttop.tbto_id 
where tto.tbto_ponta_id  = '9990010801194817'
order by tto.tbto_create_date desc



select * from tb_transaction_order tto 
left join tb_transaction_delivery ttd 
on tto.tbto_id = ttd.tbto_id 
--left join tb_transaction_delivery_status ttds 
--on ttd.tbtd_id = ttds.tbtd_id 
where tto.tbto_voucher_code  = 'BD58E7ABFPOC'

select ttop.tbtop_product_name, ttop.tbtop_price, ttop.tbtop_ponta_pint , ttpp.tbtpp_unit_discount, ttpp.tbtpp_name 
from tb_transaction_order_product ttop 
left join tb_transaction_promotion_process ttpp 
on ttop.tbto_id  = ttpp.tbto_id
where ttpp.tbtpp_create_date between '2021-03-06' and '2021-03-07'

select * from tb_transaction_order_product


select * from tb_transaction_promotion_process
where tbtpp_bonus_point is not null
and tbtpp_bonus_point > 0
order by tbtpp_create_date desc




select tto.tbto_create_date, ttds.tbtds_create_date, tto.tbto_ponta_id, 
tto.tbto_no, ttd.tbtd_no, tto.tbto_status, ttds.tbtds_status, tto.tbto_voucher_code,
ttpp.tbtpp_juklak, ttpp.tbtpp_invoice, ttpp.tbtpp_name 
from tb_transaction_order tto 
left join tb_transaction_delivery ttd 
on tto.tbto_id = ttd.tbto_id
left join tb_transaction_delivery_status ttds 
on ttd.tbtd_id = ttds.tbtd_id 
left join tb_transaction_promotion_process ttpp 
on ttpp.tbto_id  = tto.tbto_id
where tto.tbto_create_date between '2021-01-01' and '2021-03-18'
--and tto.tbto_status = 18
and ttds.tbtds_status = 15
and ttpp.tbtpp_juklak is not null
and tto.tbto_ponta_id is not null
and ttpp.tbtpp_name like '%SKI%'


select * from tb_transaction_order tto 
where tto.tbto_voucher_code = 'A53999BA91NV'





