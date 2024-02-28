
/*Poblar la tabla de departamentos*/
alter table bdclinica.tbldepartamento  auto_increment = 120;

insert into bdclinica.tbldepartamento(  departamento, codigo )  
values ('Atlantida', '01' ),
	   ('Comayagua', '03' ),
       ('Cortes', 	 '05' ),
       ('Francisco Morazan', '08' ),
       ('Olancho', '15' );

/*	Registrar la tabla de municipios*/
alter table bdclinica.tblmunicipios  auto_increment = 200;

insert into bdclinica.tblmunicipios(municipio, codigo, numdepartamento) 
values ('La Ceiba','0101', 120),
	   ('Comayagua','0301', 121),
       ('San Pedro Sula','0501', 122),
       ('Distrito Central','0801', 123),
       ('Santa Lucia','0823', 123),
       ('Santa Barbara','1601', 124);
       
Select * from bdclinica.tblciudades; 

/*Poblar tabla de ciudades */
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

/*	Registrar tipo de empleado*/  
alter table bdclinica.tblprofesiones  auto_increment = 10;

insert into tblprofesiones ( Profesion, descrpcion ) 
values 	('Bachiller Administracion',''),
		('Contador Publico',''),
        ('Medico General',''),
        ('Cirujano',''),
        ('Ingeniero','');


