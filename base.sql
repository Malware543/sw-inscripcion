drop table if exists escuela;
create table escuela;
use escuela;

create table carrera(){
    idca integer primary key not null,
    nombre varchar(50),
    codigo varchar(15), 
    /*edificio varchar(10)*/
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
insert into carrera values(1,'Arquitectura','LZ'),(2,'Contador Público','LN'),(3,'Ing. Electromecánica','IT'),
(4,'Ing. en Animación Digital y Efectos Visuales','IA'),(5,'Ing. en Gestión Empresarial','IB'),(6,'Ing. en Materiales','IH'),
(7,'Ing. en Sistemas Computacionales','IC'),(8,'Ing. Industrial','ID'),(9,'Ing. Mecatrónica','IM'),(10,'Ing. Química','IF'),
(11,'Licenciatura en Turismo','LO'),(12,'Ing. en Logística','IJ');

/*Insercion de materias, arquitectura*/
insert into materias values(1,1,'Fundamentos Teorico del diseño I',5,'primer','ic-0101');


/*
1.GRUPO: LZ-0101:aquitectura 
2.GRUPO: LN-0101:Contador Público
3.GRUPO: IT-0101:Ing. Electromecánica 
4.GRUPO: IA-0101:Ing. en Animación Digital y Efectos Visuales
5.GRUPO: IB-0101:Ing. en Gestión Empresarial
6.GRUPO: IH-0101:Ing. en Materiales 
7.GRUPO: IC-0101:Ing. en Sistemas Computacionales 
8.GRUPO: ID-0101:Ing. Industrial
9.GRUPO: IM-0101:Ing. Mecatrónica 
10.GRUPO: IF-0101:Ing. Química 
11.GRUPO: LO-0101:Licenciatura en Turismo 
12.GRUPO: IJ-0101:Ing. en Logística
*/