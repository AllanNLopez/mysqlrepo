/*

*/

/*		Poblar tabla de estados			*/
alter table bdclinica.tblestados  auto_increment = 450;

insert into bdclinica.tblestados (numestado, estado, categoria) 
values	(451,'ACTIVO','USUARIOS'),
		(452,'INACTIVO','USUARIOS'),
        (453,'AGENDADA','CITAS'),
        (454,'EN ESPERA','CITAS'),
        (455,'EN ATENCION','CITAS'),
        (456,'CANCELADA','CITAS');


/*		Poblar la tabla de departamentos	*/
alter table bdclinica.tbldepartamento  auto_increment = 120;

insert into bdclinica.tbldepartamento(  departamento, codigo )  
values ('Atlantida', '01' ),
	   ('Comayagua', '03' ),
       ('Cortes', 	 '05' ),
       ('Francisco Morazan', '08' ),
       ('Olancho', '15' );

/*		Poblar la tabla de municipios		*/
alter table bdclinica.tblmunicipios  auto_increment = 200;

insert into bdclinica.tblmunicipios(municipio, codigo, numdepartamento) 
values ('La Ceiba','0101', 120),
	   ('Comayagua','0301', 121),
       ('San Pedro Sula','0501', 122),
       ('Distrito Central','0801', 123),
       ('Santa Lucia','0823', 123),
       ('Santa Barbara','1601', 124);

/*		Poblar tabla de ciudades */
alter table bdclinica.tblciudades  auto_increment = 350;

INSERT INTO `bdclinica`.`tblciudades` (`Ciudad`, `numMunicipio`) 
VALUES 	('Tegucigalpa', '203'),
		('Comayaguela', '203'),
        ('Comayagua', '201'),
        ('San Pedro Sula', '202');
        
/*	Registrar tipo de empleado*/  
alter table bdclinica.tbltipoempleado  auto_increment = 180;

insert into tbltipoempleado ( tipoempleado, descripcion ) values 
('Administracion','Empleado de area de administracion'),
('Salud General','Empleado profesional de la salud.');

/*	Registrar profesiones*/  
alter table bdclinica.tblprofesiones  auto_increment = 10;

insert into tblprofesiones ( Profesion, descrpcion ) 
values 	('Bachiller Administracion',''),
		('Contador Publico',''),
        ('Medico General',''),
        ('Cirujano',''),
        ('Ingeniero','');


/*	Registrar direcciones */  
alter table bdclinica.tbldireccion  auto_increment = 1001;

INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`, `Calle`) VALUES (1001,'350', 'Col Kennedy', '1ra.');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1002,'350', 'Barrio Morazan');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1003,'350', 'Col Prado');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1004,'351', 'Col Carrizal');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1005,'351', 'Col Cerro Grande');

INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1006,'350', 'Col hato de enmedio');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1007,'350', 'Col Prado');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1008,'350', 'Barrio Morazan');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1009,'350', 'Col San Miguel');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1010,'350', 'Col Miraflores');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1011,'350', 'Col Kennedy');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1012,'350', 'Col Kennedy');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1013,'350', 'Col Calpules');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1014,'350', 'Col El Hogar');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1015,'350', 'Col Prado');

INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1016,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1017,'351', 'Col Toncontin');

INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1018,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1019,'350', 'Col Toncontin');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1020,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1021,'351', 'Col Toncontin');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1022,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1023,'351', 'Col Flor del campo');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1024,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1025,'351', 'Col Las torres');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1026,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1027,'351', 'Residencial Las Uvas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1028,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1029,'351', 'Col Francisco Morazan');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1030,'350', 'Col Las Lomas');
INSERT INTO `bdclinica`.`tbldireccion` (`numDireccion`,`numCiudad`, `Detalles`) VALUES (1031,'351', 'Col Toncontin');

/*	Registrar empleados */
alter table bdclinica.tblempleados  auto_increment = 5020;

INSERT INTO `bdclinica`.`tblempleados` 
		(numEmpleado,`DNI`, `Nombres`, `Apellidos`, `FechaNacimiento`, `Edad`, `FechaIngreso`,`numtipoempleado`,`numdireccion`,`numprofesion`) 
VALUES 	(5021, '0801199078965', 'Pablo', 'Reyes', '1990-10-05', '34', '2018-10-09', 180, 1001, 10),
		(5022, '0820198012365', 'Maria Elena', 'Martinez', '1980-02-10', '44', '2020-03-09', 180, 1002, 10),        
        (5023, '0801197400012', 'Mauricio Antonio', 'Oseguera Lopez', '1974-09-10', '50', '2018-10-09', 181, 1003, 12),
        (5024, '0805198500251', 'Arturo Jose', 'Gutierrez Coti', '1985-01-23', '39', '2018-03-20', 181, 1004, 12),
        (5025, '0823199005454', 'Oscar Alfredo', 'Cruz Castillo', '1990-06-18', '30', '2018-06-09', 181, 1005, 12),
        (5026, '0801198954896', 'Dora Azucena', 'Rivera', '1989-02-15', '35', '2018-05-09', 181, 1006, 12),
        (5027, '0820199474125', 'Mircia Elizabeth', 'Cantillano Sevilla', '1994-05-25', '30', '2018-02-09', 181, 1007, 12),        
        (5028, '0803197010015', 'Agustin', 'Sauceda Avilez', '1970-07-30', '54', '2018-10-11', 181, 1007, 13),
        (5029, '0801197500014', 'Herminio Antonio', 'Figueroa Valladares', '1975-08-22', '49', '2019-01-20', 181, 1008, 13),
        (5030, '0801199078965', 'Jorge Arturo', 'Bocelli', '1990-10-05', '34', '2018-10-09', 181, 1009, 13),        
        (5031, '0801199578965', 'Pablo', 'Reyes', '1995-10-05', '29', '2018-10-09', 180, 1010, 11),
        (5032, '0801200045123', 'Ariana Michell', 'Zelaya Jimenez', '2000-08-05', '24', '2022-03-09', 180, 1011, 11);

alter table bdclinica.tblusuarios  auto_increment = 25001;

INSERT INTO `bdclinica`.`tblusuarios` 
	(`numUsuario`, `nombreUsuario`, `contrasena`, `numEmpleado`, `numEstado`) 
VALUES  ('25002','PaReyes','dasda89s8d9asdka8s0',5021, '451'),
		('25003','MaMartinez','dasda89s8d9asdka8s0',5022, '451'),
		('25004','MaOseguera ','dasda89s8d9asdka8s0',5023, '451'),
		('25005','ArGutierrez ','dasda89s8d9asdka8s0',5024, '451'),
		('25006','OsCruz ','dasda89s8d9asdka8s0',5025, '451'),
		('25007','DoRivera','dasda89s8d9asdka8s0',5026, '451'),
		('25008','MiCantillano ','dasda89s8d9asdka8s0',5027, '451'),
		('25009','AgSauceda ','dasda89s8d9asdka8s0',5028, '451'),
		('25010','HeFigueroa ','dasda89s8d9asdka8s0',5029, '451'),
		('25011','JoBocelli','dasda89s8d9asdka8s0',5030, '451'),
		('25012','PaReyes','dasda89s8d9asdka8s0',5031, '451'),
		('25013','ArZelaya ','dasda89s8d9asdka8s0',5032, '451')
;

alter table bdclinica.tblclinica  auto_increment = 130;

INSERT INTO `bdclinica`.`tblclinica` (`numClinica`, `nombre`, `telefono`, `numDireccion`) 
VALUES 	('131', 'Clinica 1', '2232-1589', '1016'),
		('132', 'Clinica 2', '2255-1320', '1017');


alter table bdclinica.tblpacientes  auto_increment = 20000;

INSERT INTO `bdclinica`.`tblpacientes` 
		(`numPaciente`, `dni`, `nombres`, `apellidos`, `fechaNacimiento`, `edad`, `sexo`, `alturaCms`, `pesoLbs`, `numDireccion`) 
VALUES 	('20001', '0801199012345', 'Jose Roberto', 'Urbina Soto', '1990-10-02', '34', 'M', '180', '210.45', '1018'),
		('20002', '0823199600896', 'Sonia Ernestina', 'Dubon Herrera', '1996-12-22', '28', 'F', '165', '169.36', '1019'),
        ('20003', '0501196010025', 'Ana Rosario', 'Escobar Rivera', '1960-07-02', '64', 'F', '160', '171.78', '1020'),
        ('20004', '0801198036512', 'Virginia', 'Velasquez Sorto', '1980-03-25', '44', 'F', '158', '185', '1021'),
        ('20005', '0823200115845', 'Alvaro Samuel', 'Escoto Hernandez', '2001-01-23', '23', 'M', '175', '179.65', '1022'),        
        ('20006', '0801200213752', 'Miguel Antonio', 'Ferrufino Izaguirre', '2002-10-14', '22', 'M', '178', '190.54', '1023'),
        ('20007', '0801199012345', 'Oscar Isaac', 'Contreras Garcia', '1990-10-02', '13', 'M', '175', '165.73', '1024'),
        ('20008', '0101196800457', 'Oscar Roberto', 'Osorio Perez', '1968-03-30', '56', 'M', '155', '173.56', '1025'),
        ('20009', '0301200114519', 'Alba Jimena', 'Lopez Velasquez', '2001-01-19', '23', 'F', '173', '184.25', '1026'),        
        ('20010', '0801200623541', 'Jose Alfredo', 'Vasquez Flores', '2006-05-12', '18', 'M', '184', '196.25', '1027'),
        ('20011', '0301196020012', 'Estela', 'Suarez Cruz', '1960-02-14', '64', 'F', '165', '180.45', '1028'),        
        ('20012', '0501199130025', 'Maritza Ortencia', 'Hernandez Torres', '1991-09-17', '33', 'F', '158', '168.95', '1029'),
        ('20013', '0301199700012', 'Marcia Lizeth', 'Martinez Alvarez', '1997-05-20', '27', 'F', '166', '195.23', '1030'),
        ('20014', '1601200412023', 'Alex Francisco', 'Villeda Valladares', '2004-02-18', '20', 'M', '192', '178.58', '1031');

 
alter table bdclinica.tblcitas  auto_increment = 70030;

INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70030,'2022-10-26 00:00:00','Sala 2',20014,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70031,'2022-10-26 00:00:00','Sala 1',20012,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70032,'2022-10-28 00:00:00','Sala 1',20013,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70033,'2022-10-31 00:00:00','Sala 1',20012,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70034,'2022-10-31 00:00:00','Sala 1',20009,131,25002,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70035,'2022-11-02 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70036,'2022-11-02 00:00:00','Sala 2',20003,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70037,'2022-11-02 00:00:00','Sala 1',20009,131,25002,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70038,'2022-11-02 00:00:00','Sala 2',20004,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70039,'2022-11-02 00:00:00','Sala 1',20013,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70040,'2022-11-03 00:00:00','Sala 1',20009,131,25002,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70041,'2022-11-04 00:00:00','Sala 2',20004,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70042,'2022-11-05 00:00:00','Sala 1',20008,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70043,'2022-11-05 00:00:00','Sala 2',20010,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70044,'2022-11-05 00:00:00','Sala 2',20014,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70045,'2022-11-05 00:00:00','Sala 2',20014,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70046,'2022-11-06 00:00:00','Sala 2',20014,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70047,'2022-11-07 00:00:00','Sala 1',20012,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70048,'2022-11-09 00:00:00','Sala 1',20008,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70049,'2022-11-09 00:00:00','Sala 1',20008,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70050,'2022-11-10 00:00:00','Sala 2',20010,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70051,'2022-11-11 00:00:00','Sala 2',20014,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70052,'2022-11-12 00:00:00','Sala 2',20010,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70053,'2022-11-12 00:00:00','Sala 1',20011,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70054,'2022-11-13 00:00:00','Sala 1',20012,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70055,'2022-11-14 00:00:00','Sala 2',20007,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70056,'2022-11-15 00:00:00','Sala 2',20014,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70057,'2022-11-15 00:00:00','Sala 1',20008,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70058,'2022-11-15 00:00:00','Sala 1',20008,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70059,'2022-11-20 00:00:00','Sala 2',20004,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70060,'2022-11-22 00:00:00','Sala 1',20009,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70061,'2022-11-22 00:00:00','Sala 2',20014,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70062,'2022-11-22 00:00:00','Sala 1',20008,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70063,'2022-11-22 00:00:00','Sala 1',20012,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70064,'2022-11-25 00:00:00','Sala 1',20011,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70065,'2022-11-25 00:00:00','Sala 1',20013,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70066,'2022-11-27 00:00:00','Sala 2',20010,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70067,'2022-11-28 00:00:00','Sala 1',20012,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70068,'2022-12-02 00:00:00','Sala 2',20014,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70069,'2022-12-02 00:00:00','Sala 1',20013,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70070,'2022-12-02 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70071,'2022-12-03 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70072,'2022-12-06 00:00:00','Sala 1',20013,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70073,'2022-12-07 00:00:00','Sala 1',20013,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70074,'2022-12-07 00:00:00','Sala 2',20004,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70075,'2022-12-07 00:00:00','Sala 2',20003,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70076,'2022-12-08 00:00:00','Sala 1',20008,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70077,'2022-12-09 00:00:00','Sala 1',20012,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70078,'2022-12-11 00:00:00','Sala 1',20008,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70079,'2022-12-14 00:00:00','Sala 1',20006,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70080,'2022-12-15 00:00:00','Sala 1',20013,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70081,'2022-12-16 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70082,'2022-12-16 00:00:00','Sala 2',20010,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70083,'2022-12-17 00:00:00','Sala 2',20004,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70084,'2022-12-17 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70085,'2022-12-18 00:00:00','Sala 2',20003,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70086,'2022-12-18 00:00:00','Sala 1',20011,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70087,'2022-12-18 00:00:00','Sala 2',20010,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70088,'2022-12-19 00:00:00','Sala 2',20003,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70089,'2022-12-21 00:00:00','Sala 2',20014,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70090,'2022-12-22 00:00:00','Sala 2',20007,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70091,'2022-12-22 00:00:00','Sala 2',20010,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70092,'2022-12-23 00:00:00','Sala 2',20010,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70093,'2022-12-23 00:00:00','Sala 2',20007,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70094,'2022-12-25 00:00:00','Sala 1',20013,131,25002,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70095,'2022-12-25 00:00:00','Sala 2',20007,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70096,'2022-12-29 00:00:00','Sala 2',20010,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70097,'2022-12-30 00:00:00','Sala 1',20008,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70098,'2022-12-31 00:00:00','Sala 1',20012,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70099,'2022-12-31 00:00:00','Sala 1',20012,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70100,'2023-01-01 00:00:00','Sala 2',20007,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70101,'2023-01-02 00:00:00','Sala 1',20009,131,25002,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70102,'2023-01-04 00:00:00','Sala 1',20006,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70103,'2023-01-05 00:00:00','Sala 1',20009,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70104,'2023-01-05 00:00:00','Sala 2',20014,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70105,'2023-01-08 00:00:00','Sala 1',20009,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70106,'2023-01-09 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70107,'2023-01-10 00:00:00','Sala 2',20003,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70108,'2023-01-12 00:00:00','Sala 1',20008,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70109,'2023-01-13 00:00:00','Sala 1',20009,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70110,'2023-01-13 00:00:00','Sala 2',20010,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70111,'2023-01-13 00:00:00','Sala 1',20011,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70112,'2023-01-15 00:00:00','Sala 1',20013,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70113,'2023-01-16 00:00:00','Sala 1',20013,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70114,'2023-01-17 00:00:00','Sala 2',20004,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70115,'2023-01-18 00:00:00','Sala 2',20004,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70116,'2023-01-20 00:00:00','Sala 1',20012,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70117,'2023-01-21 00:00:00','Sala 1',20008,132,25003,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70118,'2023-01-22 00:00:00','Sala 1',20009,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70119,'2023-01-23 00:00:00','Sala 1',20012,132,25003,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70120,'2023-01-24 00:00:00','Sala 1',20013,131,25002,455);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70121,'2023-01-25 00:00:00','Sala 1',20009,131,25002,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70122,'2023-01-27 00:00:00','Sala 1',20013,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70123,'2023-01-27 00:00:00','Sala 2',20010,132,25003,454);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70124,'2023-01-30 00:00:00','Sala 2',20007,131,25002,453);
INSERT INTO bdclinica.tblcitas (`numCita`,`fechaHora`,`sala`,`numPaciente`,`numClinica`,`numUsuario`,`numEstado`) VALUES (70125,'2023-01-30 00:00:00','Sala 2',20007,131,25002,453);




