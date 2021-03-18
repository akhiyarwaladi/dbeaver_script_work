select ttp.tbtp_transaction_id, tto.tbto_amount_final, ttp.tbtp_ponta_amount, tmp.tbmp_in, ttp.tbtp_status, tmp.tbmp_id, tto.tbto_no, ttp.tbtp_create_date, tto.tbto_create_date 
from tb_transaction_payment ttp 
left join tb_transaction_order tto 
on ttp.tbto_id = tto.tbto_id 
left join tb_master_payment tmp 
on ttp.tbmp_id = tmp.tbmp_id
where ttp.tbtp_update_date >= '2020-12-28'
and ttp.tbtp_update_date <= '2021-01-11'
--and ttp.tbtp_status = 79
--and ttp.tbmp_id = 33
and ttp.tbtp_transaction_id = 'T-210110-XXDGW'
order by ttp.tbtp_create_date asc

select * from tb_transaction_payment ttp where tbtp_transaction_id = 'T-210103-JFCJJ'

select * from tb_transaction_payment ttp where tbto_id = 21911567

select * from tb_transaction_payment_log ttpl 
where tbtpl_create_date >= '2020-01-19'
and tbtpl_create_date <= '2020-01-20'
and tbtpl_status = 47


select * from tb_transaction_payment 
where tbtp_transaction_id = 'T-201202-CGRZX'




select tbtp_id, tbtp_create_date, tbtp_create_date, tbtp_update_date, tbto_id, tbmp_id, tbtp_status, tbtp_transaction_id from tb_transaction_payment_hist ttph 
--where tbtp_create_date between '2021-01-27' and '2021-01-29'
--and tbtp_id = 18102870
where tbtp_create_date between '2020-12-02' and '2020-12-03'
and tbtp_id = 14895070
--and tbtp_transaction_id = 'T-210128-KTQPV'
--limit 100



select ttds.tbtds_create_date, ttds.tbtds_status, tto.tbto_status, tto.tbto_id 
from tb_transaction_order tto 
left join tb_transaction_delivery ttd 
on ttd.tbto_id = tto.tbto_id
left join tb_transaction_delivery_status ttds 
on ttds.tbtd_id = ttd.tbtd_id 
--where tto.tbto_id = 22977550
where tto.tbto_id = 17159491


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



select * from tb_transaction_payment ttp 
where ttp.tbtp_transaction_id = 'T-210309-WXLRX'





