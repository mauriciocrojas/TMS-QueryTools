/*
-------------------------------------------------------------------

Prepara primero:
Se rutea con las cantidades modificadas, sin remito no se rutea.

Nike
Puma
Converse
Samsonite
Leqoq
Gerula

-------------------------------------------------------------------

Rutea primero:
Se rutea con las cantidades del pedido original.

Philips x3 (TPV, DA, PH)
Carrier (Fueguina, Arg)
La Virginia 
Sabic

-------------------------------------------------------------------

/*
select c.RazonSocial, toc.Descripcion from cliente c
inner join OperacionCliente oc on c.IdCliente = oc.IdCliente
inner join operacion o on o.IdOperacion = oc.IdOperacion
inner join TipoOperacion toc on toc.IdTipoOperacion = o.IdTipoOperacion
where c.IdCliente in( 7770)
*/

-------------------------------------------------------------------

Pending Preparing (Pasaje de portal a infor): 
Rutea primero, portal, pending routing, fleet -> comienza circuito ruteo.

Pending Routing (pasaje de portal a fleet): 
Ingresa el pedido a portal, la pending routing env�a el pedido a fleet en estado ingresado,
el ruteador lo visualiza para rutearlo, le crea la orden y la ruta. Confirma la ruta, y la orden y el pedido 
cambian a "en preparaci�n", y en portal a 3, ah� lo tome la pending preparing para enviarlo a infor.

Record_Type((como ingres� el pedido)pl_orders):
--null interfaz
--2,  import excel
--3 manual


--Cuando es un cliente Rutea Primero, o un pedido manual. Se debe actualizar
--el status=1,sendtofleet=null para el pedido que no ingresa.

--Cuando el cliente es, nike, converse, samsonite o puma (PREPARA PRIMERO) y 
--no es pedido manual. Se debe actualizar el status=3, sendtofleet=null para el pedido que no ingresa.

RTOM: Remito manual.

-------------------------------------------------------------------

Si se prepara en plee ingresa a infor.

Nike no tiene remito en la exo_remito.

-------------------------------------------------------------------

--Ultima milla
Exo -> Expreso(ejemplo Tradelog) -> Destino(ejemplo C�rdoba)

-------------------------------------------------------------------

--EndPointCode (EPC):
Codigo de direcci�n, para asociar con domicilioorden.
Por otro lado es que el cliente si nos informa endpointcode y una direcci�n 
diferente a la actual, actualizar�a con la nueva y si no existe el epc lo da de alta.


-------------------------------------------------------------------

TRANSMITFLAGS:

2:
--interfaz de confirmacion al cliente
Cuando el pedido se prepara en infor, genera un registro de tablename = 'customerorderstaged' 
con el campo transmitflag2 en 9 (diciendo que se proces� la actualizaci�n en portal), 
y el env�o de interfaz de confirmaci�n de preparaci�n se realiza por el cambio en portal (se env�a desde portal).

3:
El campo transmitflag3 en 9, significa que se proces� la dropid y actualiz� en fleet el pedido y orden.

-------------------------------------------------------------------

--OriginalQTY lo que envia el cliente
--Openqty lo que se prepar� pero a�n no se expidi�
--Shippedqty lo expedido

-------------------------------------------------------------------

*/