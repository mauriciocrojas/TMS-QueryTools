
--select IDSERVICESTATUS, * from [3PL_POOL].dbo.PL_SERVICE_ORDERS where EXTERNALREFERENCE = 'TRIU8159389'

select STATUS,loaddatetime,CONTAINERNUMBER, IDCONTAINERTYPE, containerstatus, IDDESTINATIONADDRESS, * from [3PL_POOL].dbo.PL_SERVICE_ORDERDETAIL where IDSERVICEORDER = '98942'

select idcustomer, OFFICENUMBER, idservicetype, IDSERVICE, * from [3PL_POOL].dbo.PL_SERVICE_ORDERS where IdServiceOrder = '98942'

--
select IDSERVICEORDERDETAIL,STATUS,loaddatetime,CONTAINERNUMBER, IDCONTAINERTYPE, containerstatus, IDDESTINATIONADDRESS, * from [3PL_POOL].dbo.PL_SERVICE_ORDERDETAIL where IDSERVICEORDER = '98941'

select idcustomer, OFFICENUMBER, idservicetype, IDSERVICE, * from [3PL_POOL].dbo.PL_SERVICE_ORDERS where IdServiceOrder = '98941'

select * from Pedido order by IdPedido desc where ReferenciaExterna like '09092201'

select DISTRICT, NDISCTRICT, STREET, NSTREET, INFORMEDSTREET, STATE, NSTATE, CITY, NCITY, TOWN, NTOWN, ZIP, NZIP, * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES = 3613

--UPDATE [3PL_POOL].dbo.PL_SERVICE_ORDERDETAIL SET STATUS = 1 where IDSERVICEORDER = '98942'

UPDATE [3PL_POOL].dbo.PL_DELIVERYADDRESSES SET 
NDISCTRICT = 'ESTEBAN ECHEVERRIA', 
NSTREET = 'Ruta De La Tradición',
NSTATE = 'Buenos Aires',
NCITY = '9 De Abril',
NZIP = 1839,
TOWN = '',
NTOWN = '',
NUMBER = 7732,
NNUMBER = 7732
where IDDELIVERYADDRESSES = 3613



--98940	yytr	REFINERÍA	EXO - PIRELLI	QUIMICA CALLEGARI S.R.L.	Importacion - Single Trip	TRIU8159389

SELECT max(PSOD.IDSERVICEORDERDETAIL) FROM [3PL_POOL].dbo.PL_SERVICE_ORDERS PSO WITH (NOLOCK)
    INNER JOIN [3PL_POOL].dbo.PL_SERVICE_ORDERDETAIL PSOD WITH (NOLOCK) ON PSO.IDSERVICEORDER = PSOD.IDSERVICEORDER
    where PSOD.status in (1,0,13) AND psod.loaddatetime >= convert(DATE,getdate())
        and (
        (PSOD.CONTAINERNUMBER is not NULL AND len(PSOD.CONTAINERNUMBER) = 11 AND PSOD.IDCONTAINERTYPE IS NOT NULL) OR PSO.IDSERVICETYPE = 3) -- Si es Impo/Expo valida que tenga N° contenedor | Sino | Que servicio sea transporte |Linea anterior >|--and psod.CONTAINERNUMBER is not null
    AND (
        (PSO.idcustomer IN (1424,2986,3486,4528,4529,4530) AND (ISNULL(pso.OFFICENUMBER,PSOD.OFFICENUMBER) IS NOT NULL OR (pso.idservicetype =3 OR (pso.idservice = 2 AND pso.idservicetype = 1 AND psod.containerstatus = 2))))
        OR
        pso.idcustomer NOT IN (1424,2986,3486,4528,4529,4530)    
        )
		
    --Control, evita que se creen servicios con contenedores duplicados    
    AND PSO.idserviceorder NOT IN (select O.IDSERVICEORDER from PL_SERVICE_ORDERS O WITH (NOLOCK)
                                   inner join PL_SERVICE_ORDERDETAIL OD WITH (NOLOCK) on O.IDSERVICEORDER = OD.IDSERVICEORDER
                                   where O.IDSERVICESTATUS IN (1,2) and OD.CONTAINERNUMBER is not null
                                   group by O.IDSERVICEORDER, OD.CONTAINERNUMBER
                                   having count(1) > 1
                                  )


