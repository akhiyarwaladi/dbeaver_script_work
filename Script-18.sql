SELECT * FROM ALFAGIFT_MASTER_PRODUCT amp 
LEFT JOIN MASTER_ITEM mi 
ON amp.PRODUCT_SKU_SELLER = TO_CHAR(mi.ITEM_N) 
WHERE lower(DESCP_DEPT) LIKE '%staple%'