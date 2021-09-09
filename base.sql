drop table if exists escuela;
create table escuela;
use escuela;

create table carrera(){
    idca integer primary key not null,
    nombre varchar(50), 
    edificio varchar(10)
};
create table materias(
    idma integer primary key not null,
    idca integer not null,
    nombre varchar(50) not null,
    creditos integer not null,
    semestre varchar(20) not null, 
    salon varchar(20) not null,
    foreign key (idca) references carrera(idca)
);

create table maestros(
    idmaes integer primary key not null,
    idma integer not null,
    nombre varchar(50),
    foreign key(idma) references materias(idma)
);

/*agregado de tabla alumno*/
create table alumnos(){
    idal integer primary key not null,
    idca integer primary key not null,
    nombre varchar(50) not null,
    foreign key (idca) references carrera(idca)
};

/*Insercion de carreras*/
insert into carrera values(1,'Arquitectura'),(2,'Contador Público'),(3,'Ing. Electromecánica'),
(4,'Ing. en Animación Digital y Efectos Visuales'),(5,'Ing. en Gestión Empresarial'),(6,'Ing. en Materiales'),
(7,'Ing. en Sistemas Computacionales','I'),(8,'Ing. Industrial'),(9,'Ing. Mecatrónica'),(10,'Ing. Química'),
(11,'Licenciatura en Turismo'),(12,'Ing. en Logística');

insert into carrera values(1,'sistemas','f');

insert into materias values(1,1,'mate',5,'primer','ic-0101');
