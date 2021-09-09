
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


insert into carrera values(1,'sistemas','f');

insert into materias values(1,1,'mate',5,'primer','ic-0101');