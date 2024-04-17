/*
	Crear una consulta SQL para obtener la siguiente informacion de los empleados:
    Numero de empleado, Nombre completo del empleado, fecha de ingreso, tipo de empleado, 
    profesion del empleado y los años de antiguedad laboral (al aña actual) del empleado. 
*/
select
	 a.numEmpleado
    ,concat(a.Nombres, " ",a.apellidos) NombreEmpleado
    ,a.FechaIngreso
    ,b.TipoEmpleado
    ,c.Profesion
    ,date_format(curdate(),'%Y') - date_format(a.fechaingreso,'%Y') antiguedadlaboral
from bdclinica.tblempleados a 
left join bdclinica.tbltipoempleado b 
on a.numTipoEmpleado = b.numTipoEmpleado
left join bdclinica.tblprofesiones c 
on a.numProfesion = c.numProfesion;

/*
	Se solicita un reporte de datos generales de pacientes, requiriendo los siguientes campos: 
    Numero de paciente, DNI, Nombre completo, fecha nacimiento, edad, sexo, altura en metros, peso en kg, 
    Ciudad, municipio y departamento de su direccion. 
    Presentar el nombre de los pacientes en letras mayusculas y los datos numeros con una pocision decimal.

*/

SELECT 
	a.numPaciente, a.dni, 
    upper( concat(a.nombres, " ", a.apellidos) ) nombre, 
    a.fechaNacimiento, a.edad, a.sexo, 
    round(a.alturaCms /100,1) altura,
    round( a.pesoLbs/2.21, 1) peso,   
    c.Ciudad, 
    m.Municipio,
    d.Departamento
FROM bdclinica.tblpacientes a 
left join bdclinica.tbldireccion b 
on a.numDireccion = b.numDireccion 
left join bdclinica.tblciudades c
on b.numCiudad = c.numCiudad
left join bdclinica.tblmunicipios m 
on c.numMunicipio = m.numMunicipio
left join bdclinica.tbldepartamento d
on m.numDepartamento = d.numDepartamento;

/*
Crear una consulta SQL para obtener un reporte de la cantidad de citas
registradas por cada usuario. Se necesita conocer el nombre del usuario, el nombre completo de empleado y la cantidad de citas

*/

select 
	a.numUsuario, a.nombreUsuario, 
    concat( b.Nombres, " ", b.Apellidos) Empleado , 
    c.Estado, 
    count( cl.numCita ) citas  
from bdclinica.tblusuarios a 
left join bdclinica.tblempleados b 
on a.numEmpleado = b.numEmpleado
left join bdclinica.tblestados c 
on a.numEstado = c.numEstado 
left join bdclinica.tblcitas cl 
on a.numUsuario = cl.numUsuario
group by 	a.numUsuario, a.nombreUsuario,  concat( b.Nombres, " ", b.Apellidos)   ,   c.Estado

/*
	Crear una consulta SQL para obtener un reporte de las citas registradas:
    Se necesita conocer, el numero de cita, la fecha y hora, sala, nombre completo del paciente, 
    el nombre de la clinica y el estado estado de la cita. 
*/

select * from bdclinica.tblcitas; 
select * from bdclinica.tblestados; 

/*
	Se requiere un reporte de las citas del mes diciembre del 2022, en estado "ADENDADA" para la "clinica 2". 
    Se necesitan los campos numcita, fecha (dd/mm/yy), sala, nombre del paciente, clinica y estados 
*/
select
	c.numCita, c.fechaHora, c.sala, c.numPaciente, 
    concat( p.nombres, " ", p.apellidos) as Paciente , 
    cl.nombre as clinica, 
    e.estado 
from bdclinica.tblcitas c 
left join bdclinica.tblpacientes p
on c.numPaciente = p.numPaciente 
left join bdclinica.tblclinica cl 
on c.numClinica = cl.numClinica 
left join bdclinica.tblestados e 
on c.numEstado = e.numEstado
where e.categoria != "USUARIOS" and date_format(c.fechahora,'%m') =  '12' and cl.nombre = "Clinica 2" and e.Estado = "AGENDADA"
;

select * from bdclinica.tblpacientes; 



/*
	Se necesita conocer un reporte de atencion de pacientes. El numero de paciente, 
    nombre completo del paciente, identificacion, la cantidad de citas registradas, y la fecha de la ultima cita. 
*/

select 
	p.numPaciente, concat(p.nombres, " ", p.apellidos) nombrepaciente, p.dni , 
    count( c.numCita ) as cantidad, 
    max( c.fechahora) as ultimacita
from bdclinica.tblpacientes p 
left join bdclinica.tblcitas c
on p.numPaciente = c.numPaciente
/*where p.numPaciente = 20008*/
group by p.numPaciente, concat(p.nombres, " ", p.apellidos) , p.dni
; 


select * from bdclinica.tblcitas
where numpaciente = 20008; 
