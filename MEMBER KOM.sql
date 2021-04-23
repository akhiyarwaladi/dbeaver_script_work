WITH ly AS (
SELECT BRANCH ly_branch2,  TYPE ly_tipe2, count(distinct tmm_card_no) ly_aktif_member
from 
(
SELECT TMM_BRANCH_CODE BRANCH, tmm_card_no, nvl(char2, case when tmm_member_type like 'PONTA%' THEN 'PONTA REGULER' else tmm_member_type end) type,
tmm_member_type
from crm_member_sales_branch_v, ztampungan
where tmm_date = '01mar20'
and PK(+)='MEMBERKOMUNITAS'
and tmm_card_no=char1(+)
)
group BY BRANCH, TYPE) , 

ty AS (
SELECT YEAR ty_year, MONTH ty_month, BRANCH ty_branch, TYPE ty_tipe, count(distinct tmm_card_no) ty_aktif_member
from 
(
-- INSERT KE COUNT MEMBER MTD

SELECT  TO_CHAR(TMM_DATE , 'yyyy') YEAR,TO_CHAR(TMM_DATE , 'MON') MONTH, TMM_BRANCH_CODE BRANCH ,tmm_card_no, nvl(char2, case when tmm_member_type like 'PONTA%' THEN 'PONTA REGULER' else tmm_member_type end) type,
tmm_member_type
from crm_member_sales_branch_v, ztampungan
where tmm_date = '01mar21'
and PK(+)='MEMBERKOMUNITAS'
and tmm_card_no=char1(+)
)
group BY YEAR, MONTH, branch,  TYPE
),

jumlah AS (
SELECT branch,  TYPE tipe2, count(distinct tmm_card_no) jumlah_member
from (
SELECT TMM_BRANCH_CODE branch ,tmm_card_no, nvl(char2, case when tmm_member_type like 'PONTA%' THEN 'PONTA REGULER' else tmm_member_type end) type,
tmm_member_type 
from crm_member_sales_branch_v, ztampungan
where tmm_date between '01oct20' and '01mar21'
and PK(+)='MEMBERKOMUNITAS'
and tmm_card_no=char1(+)
)
group BY branch,  TYPE)

SELECT ty_year , ty_month, 'MTD' , ty_branch, ty_tipe, ty_aktif_member , ly_aktif_member, jumlah_member

FROM ty

INNER JOIN ly ON ty_tipe = ly_tipe2 AND  ty_branch = ly_branch2

INNER JOIN jumlah ON ty_tipe =  tipe2 AND  ty_branch = BRANCH


--SELECT * FROM COUNT_MEMBER_KOM cmk WHERE CM_YEAR = '2020' AND CM_MONTH = 'MAR' AND CM_BRANCH = 'JZ01' 