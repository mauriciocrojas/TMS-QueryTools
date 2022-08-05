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
Ingresa el pedido a portal, la pending routing envía el pedido a fleet en estado ingresado,
el ruteador lo visualiza para rutearlo, le crea la orden y la ruta. Confirma la ruta, y la orden y el pedido 
cambian a "en preparación", y en portal a 3, ahí lo tome la pending preparing para enviarlo a infor.


Si se prepara en plee ingresa a infor.


Nike no tiene remito en la exo_remito.

--Ultima milla
Exo -> Expreso(ejemplo Tradelog) -> Destino(ejemplo Córdoba)

--EndPointCode (EPC):
Codigo de dirección, para asociar con domicilioorden.
Por otro lado es que el cliente si nos informa endpointcode y una dirección 
diferente a la actual, actualizaría con la nueva y si no existe el epc lo da de alta.
*/