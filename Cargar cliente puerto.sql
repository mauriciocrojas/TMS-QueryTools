declare @Operacion as int = 1008 --siempre 1008
declare @IdPortal as int = 8868
declare @IdFleet as int = 9418


update [3PL_POOL].dbo.PL_CUSTOMERS SET IDOPERATION = (SELECT TOP 1 IDOPERATION FROM [3PL_POOL].dbo.PL_OPERATIONS WHERE EXTERNALREFERENCE = @Operacion) WHERE IDCUSTOMER = @IdPortal
if (select count(1) from [UNIGIS_DataRepository].dbo.OperacionCliente where IdOperacion = @Operacion and IdCliente = @IdFleet) = 0


insert into [UNIGIS_DataRepository].dbo.OperacionCliente (IdOperacion, IdCliente) values (@Operacion, @IdFleet)


INSERT INTO [3PL_POOL].dbo.PL_USERS_CUSTOMERS (IDUSER, IDCUSTOMER, ADDWHO, ADDDATE)
SELECT iduser, @IdPortal idcustomer, NULL, getdate() FROM [3PL_POOL].dbo.PL_USERS WHERE IDROL = 1 or USERNAME in ('gtrabuco', 'fquevedo', 'dchappa', 'amiguens', 'acordoba', 'damarilla', 'aolini', 'wbouzas', 'dveliz')


INSERT INTO [UNIGIS_DataRepository].dbo.UsuarioCliente (idcliente,Login, asignarviaje)
SELECT @IdFleet AS idcliente, login, 0 AS asignarviaje FROM [UNIGIS_DataRepository].dbo.GrupoUsuario WHERE IdGrupo IN (1,6,14,8,10,13,15,16,18,28,40,41)


select * from PL_USERS_CUSTOMERS where IDCUSTOMER=8868


select * from UNIGIS_DataRepository.dbo.Cliente where RazonSocial like '%CUVILLIER%' --9418


select * from PL_CUSTOMERS where CUSTOMER like '%CUVILLIER%'--8868


select * from UNIGIS_DataRepository.dbo.OperacionCliente where IdCliente=9418 --where RazonSocial like '%OFFAL%'


select * from UNIGIS_DataRepository.dbo.operacion --0000003685


select * from PL_OPERATIONS