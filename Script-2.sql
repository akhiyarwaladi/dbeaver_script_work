select
       wec_sale_shipment.wss_shipment_id,
       wec_sale_shipment.wss_store,
       wec_sale_shipment.wss_wsh_order_id,
       wec_sale_shipment.wss_status,
       WEC_SALE_HEAD.WSH_PAYMENT_METHOD,
       WEC_TRANS.WTRN_STATUS,
       wec_status.ws_description,
       wec_sale_shipment.wss_store_transacted_at,
       wec_sale_shipment.wss_sender_nik,
       wec_sale_shipment.wss_sent_at,
       wec_sale_shipment.WSS_DELIVERED_AT,
	   WEC_TRANS.WTRN_TRANS_ID
from wec_sale_shipment
JOIN wec_status on wec_sale_shipment.wss_status = wec_status.ws_code
JOIN WEC_SALE_HEAD ON wec_sale_shipment.wss_wsh_order_id = WSH_ORDER_ID
JOIN OSHOP.WEC_TRANS ON wec_sale_shipment.wss_wsh_order_id = WTRN_WSH_ORDER_ID
where wec_sale_shipment.wss_shipment_id in ('S-210315-AGZLFGN') 
ORDER BY WS_DESCRIPTION;

SELECT * FROM WEC_SALE_HEAD

SELECT * FROM WEC_STATUS

SELECT * FROM WEC_TRANS