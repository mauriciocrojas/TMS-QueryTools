/*
Prepara primero:
Se rutea con las cantidades modificadas, sin remito no se rutea.

Nike
Puma
Converse
Samsonite
Leqoq



Rutea primero:
Se rutea con las cantidades del pedido original.

Philips x3 (TPV, DA, PH)
Carrier (Fueguina, Arg)
La Virginia 
Sabic

--
Pending Preparing (Pasaje de portal a infor): 
Rutea primero, portal, pending routing, fleet -> comienza circuito ruteo.


Pending Routing (pasaje de portal a fleet): 
Ingresa el pedido a portal, la pending routing env�a el pedido a fleet en estado ingresado,
el ruteador lo visualiza para rutearlo, le crea la orden y la ruta. Confirma la ruta, y la orden y el pedido 
cambian a "en preparaci�n", y en portal a 3, ah� lo tome la pending preparing para enviarlo a infor.


Si se prepara en plee ingresa a infor.


Nike no tiene remito en la exo_remito.

--Ultima milla
Exo -> Expreso(ejemplo Tradelog) -> Destino(ejemplo C�rdoba)

--EndPointCode (EPC):
Codigo de direcci�n, para asociar con domicilioorden.
Por otro lado es que el cliente si nos informa endpointcode y una direcci�n 
diferente a la actual, actualizar�a con la nueva y si no existe el epc lo da de alta.
*/