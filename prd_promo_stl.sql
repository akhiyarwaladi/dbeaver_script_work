select * 
from tb_master_promotion_invoice tmpi 
where tmpi.tbmproi_juklak_number='SAT://20931/JKK/SAT-SPRM/XI/20'

select *
from tb_master_promotion tmp 
where tmp.tbmpro_type='103'

select * from tb_master_promotion tmp 
where tmp.tbmpro_type = '201'

select distinct(tbmpro_type) from tb_master_promotion tmp 

select * from tb_master_promotion_avoucher tmpa 
where tmpa.tbmproav_description like 'SKI%'
--where tbmproav_invoice_number = 

select * from tb_master_promotion_invoice tmpi 

 
select tmp.tbmpro_no_juklak, tmp.tbmpro_name, tmp.tbmpro_create_date, tmp.tbmpro_label, 
tmpi.tbmproi_invoice_number 
from tb_master_promotion tmp 
left join tb_master_promotion_invoice tmpi 
on tmp.tbmpro_no_juklak = tmpi.tbmproi_juklak_number 
where tbmpro_type = '201'
and tbmpro_create_date > '2021-01-01'
and tbmpro_name like '%SKI%'

select * 
from tb_master_promotion_invoice tmpi 
where tmpi.tbmproi_invoice_number = 'SAT://T-C21-2816'

select * 
from tb_transaction_voucher_issued ttvi 
--where ttvi.tbtvi_registration_receipt = 'O-210316-AGPFDHN'
--where tbtvi_invoice_number = 'SAT://T-C21-0517'
order by tbtvi_created_date desc


select * 
from tb_master_promotion_invoice tmpi 
where tmpi.tbmproi_sku_bundle != ''
and tbmproi_promo_type = '901'


-- ini untuk join ke order product pakai invoice number
-- kalo misal dia beli 1 bundle doang, di tbtqcu_qty_usage nya tertulis satu
---- tapi di order product dia tertulis qty 2

-- lso plu di alfabi log oos untuk join ke master product


select *	
from tb_transaction_benefit_qty_issued ttbqi 




