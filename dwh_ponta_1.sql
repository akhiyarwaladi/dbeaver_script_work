select * from schedule_proses sp 
where sp_id like '%Mailto%'

select * from data_science_general dsg 

SELECT * FROM daily_trx_plms
where dtp_create_date between '2021-02-01' and '2021-02-08'

select * from daily_trx_plms dtp 
order by dtp_trx_date, dtp_trx_time desc
limit 10


select * from daily_trx_plms dtp where dtp_member_id = '9990010555867516' and dtp_store_code = 'MH52'
and dtp_trx_date between '2021-02-01' and '2021-02-10'


