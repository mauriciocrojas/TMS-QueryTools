select * from wmwhse3.orders where EXTERNORDERKEY in ('21715', '21712')

select * from wmwhse3.TRANSMITLOG where key1 in ('0000001083','0000001084')

--transmitflag3 envía a de infor a fleet.

update wmwhse3.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in ('0000001083','0000001084')


/*
select c.RazonSocial, toc.Descripcion from cliente c
inner join OperacionCliente oc on c.IdCliente = oc.IdCliente
inner join operacion o on o.IdOperacion = oc.IdOperacion
inner join TipoOperacion toc on toc.IdTipoOperacion = o.IdTipoOperacion
where c.IdCliente in( 7770)
*/