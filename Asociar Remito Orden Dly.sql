select * from EXO_Remito_Orden where RefExterna in ('0711900880')

select * from Remito where NumeroRemito like '%03800020561%'

--Fleet
--select * from Pedido where ReferenciaExterna in ('0081702418')

select NumeroRemito, * from Orden where RefOrdenExterna in ('0711900880')

select NumeroRemito, * from Orden where IdOrden in ('1361097')


--Portal
select status, * from [3PL_POOL].dbo.PL_Orders where EXTERNORDERKEY = '0711900880'

select * from [3PL_POOL].dbo.PL_CUSTOMERS where IDCUSTOMER = 6283

select * from [3PL_POOL].dbo.PL_Status where IDCUSTOMER = 6283 and value = 92


--remito 00239-00063098
--De infor sale una interfaz al cliente, donde se confirma la preparaci�n, ah� ellos nos env�an el remito l�gico
--a la exo_remito_orden, y mandan el f�sico que saldr� impreso. 
--philips
--Si nos enviaron la interfaz de remito pero no impact�, deber� reprocesar DEI, 
--si no se envi�, se deber� pedir el reenvio al cliente.
