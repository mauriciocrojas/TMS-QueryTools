select status, * from PL_Orders where EXTERNORDERKEY = '0710876740' --5(pendiente de ruteo)

select * from PL_CUSTOMERS where CUSTOMER like '%samso%'

select * from PL_STATUS where IdCustomer = 6283

--

select * from EXO_Remito_Orden where RefExterna = '0710876740'

--

select status, * from wmwhse3.ORDERS where EXTERNORDERKEY = '0710876740' --75

--key1 = orderkey de orders
select * from wmwhse3.TRANSMITLOG where KEY1 = '0000009887'

--
select IdEstadoPedido, * from Pedido where IdPedido = '1058567' 

--update Pedido set IdEstadoPedido = 1 where IdPedido = '1058567' 
