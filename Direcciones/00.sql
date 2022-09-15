select Provincia, * from Orden where RefOrdenExterna = '9740742165|01'

--------------------------------------------------

--47497
--36512


--Consulta ClienteOrden
select Provincia, * from ClienteOrden where IdClienteOrden in (

select distinct IdClienteOrden from Orden where RefOrdenExterna in (
'9740738465|01',
'9740737902|01',
'9740737817|01',
'9740737691|01',
'9740737263|01',
'9740736298|01',
'9740736506|01',
'9740736553|01',
'9740736172|01',
'9740735906|01',
'9740736035|01',
'9740738239|01',
'9740737372|01',
'9740737073|01',
'9740737142|01',
'9740737074|01',
'9740737441|01',
'9740737385|01',
'9740737305|01',
'9740737554|01',
'9740737806|01',
'9740738462|01',
'9740739541|01',
'9740739625|01',
'9740739768|01',
'9740740032|01',
'9740740276|01',
'9740740588|01',
'9740741085|01',
'9740741213|01',
'9740735668|01',
'9740737692|01',
'9740736292|01')
) 



--RefDomicilioExterno en DomicilioOrden, RefClienteExterna en ClienteOrden = endpointcode
--Consulta DomicilioOrden
select Provincia, IdClienteOrden, * from DomicilioOrden where IdDomicilioOrden in (

select distinct IdDomicilioOrden from Orden where RefOrdenExterna in (
'9740738465|01',
'9740737902|01',
'9740737817|01',
'9740737691|01',
'9740737263|01',
'9740736298|01',
'9740736506|01',
'9740736553|01',
'9740736172|01',
'9740735906|01',
'9740736035|01',
'9740738239|01',
'9740737372|01',
'9740737073|01',
'9740737142|01',
'9740737074|01',
'9740737441|01',
'9740737385|01',
'9740737305|01',
'9740737554|01',
'9740737806|01',
'9740738462|01',
'9740739541|01',
'9740739625|01',
'9740739768|01',
'9740740032|01',
'9740740276|01',
'9740740588|01',
'9740741085|01',
'9740741213|01',
'9740735668|01',
'9740737692|01',
'9740736292|01')
) 
and Descripcion like '%gomerias neumen%'

select * from DomicilioOrden where IdClienteOrden = 47497

--IdClienteOrden 47497 tirecor
--IdDomicilioOrden 63143 tirecor
--EndPointCode 9731706 tirecor