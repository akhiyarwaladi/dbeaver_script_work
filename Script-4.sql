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
where ttp.tbtp_create_date >= '2021-03-01'
and ttp.tbtp_create_date <= '2021-03-03'
and ttp.tbtp_transaction_id = 'T-210301-WRNVC'
and ttp.tbtp_status in (47,48)
and ttds.tbtds_status > 11
order by ttp.tbtp_create_date asc


select * from tb_transaction_payment ttp 
where ttp.tbtp_transaction_id = 'T-210309-JYBPB'