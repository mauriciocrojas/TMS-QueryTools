select * from Motivo

select * from Motivo where IdMotivo in (
34,
35,
39,
40,
41
)

select * from EstadoParada

select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1001 and IdEstadoParadaDestino = 1002

select * from EstadoParadaTransicionMotivo where IdMotivo = 46

select * from GrupoEstadoParadaTransicion where IdGrupo = 25 

insert into  EstadoParadaTransicionMotivo 
select 627, IdMotivo from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion = 32

/*PROD
PENDIENTE 1001 - NO ENTREGA x CLIENTE 6 - NO ENTREGA x EXO 2 - NO ENTREGA x TTE 1002 - ENTREGA PARCIAL 1000

-

1001 (Pendiente) a 6 (No entrega x cte) = 14
NO PEDIDO 49 -
PEDIDO INCOMPLETO 50-
PEDIDO EQUIVOCADO 51-
TIENE SOBRE STOCKS 52-
NO PUEDE PAGAR 53-
NO ESTA EL RESPONSABLE 54-

-

1001 (Pendiente) a 2 (No entrega x exo) = 31 
PRODUCTO DETERIORADO 46-
ROBO UNIDAD 47-
ZONA DE ENTREGA MAL ASIGNADA 48-

-

1001 (Pendiente) a 1002 (No entrega x tte) = 32
NO PUEDE COMPLETAR REPARTO 55-
ACCESO INTRANSITABLE 56-
REPARTO ATRASADO 57-

-

NO ENTREGA EXO 2: 
PRODUCTO DETERIORADO 46
ROBO UNIDAD 47
ZONA DE ENTREGA MAL ASIGNADA 48

-

2 a 6 = 448 no entrega exo a no entrega cliente
NO PEDIDO 49 -
PEDIDO INCOMPLETO 50-
PEDIDO EQUIVOCADO 51-
TIENE SOBRE STOCKS 52-
NO PUEDE PAGAR 53-
NO ESTA EL RESPONSABLE 54-
-

2 a 1002 = 450 no entrega exo a no entrega tte
NO PUEDE COMPLETAR REPARTO 55-
ACCESO INTRANSITABLE 56-
REPARTO ATRASADO 57-
-

NO ENTREGA x CTE 6 :
NO PEDIDO 49
PEDIDO INCOMPLETO 50
PEDIDO EQUIVOCADO 51
TIENE SOBRE STOCKS 52
NO PUEDE PAGAR 53
NO ESTA EL RESPONSABLE 54
-
6 a 2 = 452 no entrega x cliente a no entrega por exo
PRODUCTO DETERIORADO 46-
ROBO UNIDAD 47-
ZONA DE ENTREGA MAL ASIGNADA 48-
-
6 a 1002 = 453 no entrega x cliente a no entrega x tte
NO PUEDE COMPLETAR REPARTO 55-
ACCESO INTRANSITABLE 56-
REPARTO ATRASADO 57-

-

NO ENTREGA TTE 1002 :
NO PUEDE COMPLETAR REPARTO 55
ACCESO INTRANSITABLE 56
REPARTO ATRASADO 57
.
1002 a 2 = 456 no entrega x tte a no entrega x exo
PRODUCTO DETERIORADO 46-
ROBO UNIDAD 47-
ZONA DE ENTREGA MAL ASIGNADA 48-
-
1002 a 6 = 455 no entrega tte a no entrega x cte
NO PEDIDO 49-
PEDIDO INCOMPLETO 50-
PEDIDO EQUIVOCADO 51-
TIENE SOBRE STOCKS 52-
NO PUEDE PAGAR 53-
NO ESTA EL RESPONSABLE 54-
-

ENTREGA PARCIAL:

1000 a 2 = 550 entrega parcial a no entrega x exo
PRODUCTO DETERIORADO 46-
ROBO UNIDAD 47-
ZONA DE ENTREGA MAL ASIGNADA 48-
-
1000 a 1002 = 552 entrega parcial a no entrega x tte
NO PUEDE COMPLETAR REPARTO 55-
ACCESO INTRANSITABLE 56-
REPARTO ATRASADO 57-
-
1000 a 6 = 551 entrega parcial a no entrega x cte
NO PEDIDO 49-
PEDIDO INCOMPLETO 50-
PEDIDO EQUIVOCADO 51-
TIENE SOBRE STOCKS 52-
NO PUEDE PAGAR 53-
NO ESTA EL RESPONSABLE 54-
-
*/