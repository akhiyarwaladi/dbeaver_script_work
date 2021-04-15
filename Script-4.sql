select * from tb_transaction_order tto 
where tto.tbto_create_date > '2020-02-22'
limit 5



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
where ttp.tbtp_create_date >= '2021-04-11'
and ttp.tbtp_create_date <= '2021-04-14'
--and ttp.tbtp_transaction_id = 'T-210301-WRNVC'
and tto.tbto_no = 'O-210413-AGBKYWF'
and ttp.tbtp_status in (47,48)
and ttds.tbtds_status > 11
order by ttp.tbtp_create_date asc


select * from tb_transaction_payment ttp 
where ttp.tbtp_transaction_id = 'T-210309-JYBPB'


select * from tb_transaction_order tto 
order by tbto_create_date desc


select *
from tb_transaction_order_product ttop
where ttop.tbtop_create_date between '2021-02-01' and '2021-04-01'
order by ttop.tbto_create_date ASC


SELECT tbto_no, ttd.tbtd_no, tto.tbto_status, tto.tbto_amount_final 
FROM tb_transaction_order tto
left join tb_transaction_delivery ttd 
on tto.tbto_id = ttd.tbto_id
WHERE tto.tbto_no = 'O-210330-AGJCTDP'


select * from tb_transaction_promotion_process ttpp 
where lower(ttpp.tbtpp_name) like '%brh%' 




select 
	tbmsc_tbmstr_store_id as kd_store, tbmstr_name as name_store, 
	store.tbmstr_active as active, store.tbmstr_online as support_online, store.tbmstr_delivery_support as delivery_support, store.tbmstr_f_hub as sapa,
	tbmprov_nama as prov, tbmkt_nama as kota, tbmkct_nama as kec, tbmkl_nama as kel
from 
	tb_master_store_coverage tmsc
	left join tb_master_store STORE on tbmstr_store_id = tbmsc_tbmstr_store_id
	left join tb_master_kelurahan tmk on tbmsc_tbmkl_kelurahan_id = tbmkl_kelurahan_id 
	left join tb_master_kecamatan tmk2 on   tmk.tbmkct_kecamatan_id = tmk2.tbmkct_kecamatan_id 
	left join tb_master_kota tmk3 on tmk2.tbmkt_kota_id = tmk3.tbmkt_kota_id 
	left join tb_master_provinsi tmp on tmk3.tbmprov_bps_id =tmp.tbmprov_bps_id 
where
	store.tbmstr_active = 'Y'
	and tbmstr_store_id = 'B625'
	
	
select 
	tto.tbto_no, tto.tbto_create_date, tto.tbto_no, tto.tbto_status, tto.tbto_amount_final, tto.tbto_application_id,
	tto.tbto_ponta_id, 
	ttd.tbtd_method, ttd.tbtd_delivery_store,
	tms.tbmstr_online, tms.tbmstr_delivery_support, tms.tbmstr_f_hub,
	ttds.tbtds_status 
from tb_transaction_order tto 
	left join tb_transaction_delivery ttd on tto.tbto_id = ttd.tbto_id 
	left join tb_master_store tms on ttd.tbtd_delivery_store = tms.tbmstr_store_id
	left join tb_transaction_delivery_status ttds on ttd.tbtd_id = ttds.tbtd_id 
where 
	tto.tbto_create_date between '2021-03-01' and '2021-04-01'
order by 
	tto.tbto_create_date desc


select 
tbmstr_store_id, tbmstr_name, tbmstr_active, tbmstr_online, tbmstr_delivery_support, tbmstr_f_hub 
--*
from tb_master_store

select
* 
from tb_master_member tmm 
where lower(tbmm_name) like '%fiq'

select 
	ttop.tbtop_create_date, ttop.tbto_id, ttop.tbmp_id, tmp.tbmp_plu, 
	ttop.tbtop_amount_final, tto.tbto_status
from tb_transaction_order tto
	left join tb_transaction_order_product ttop on tto.tbto_id = ttop.tbto_id 
	left join tb_master_product tmp on ttop.tbmp_id = tmp.tbmp_id 
where
	tto.tbto_create_date between '2021-04-01' and '2021-04-09'


select * from tb_master_product tmp 




