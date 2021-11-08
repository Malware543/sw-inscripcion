drop database if exists escuela;
create database escuela;
use escuela;

create table carrera(
    idca integer primary key not null,
    nombre varchar(60) not null,
    codigo varchar(15)not null 
);

create table materias(
    idma integer auto_increment primary key not null,
    idca integer not null,
    nombre varchar(90) not null,
    creditos integer not null,
    semestre varchar(20) not null, 
    foreign key (idca) references carrera(idca)
);

create table maestros(
    idmaes integer primary key not null,
    idma integer not null,
    nombre varchar(50) not null,
    foreign key(idma) references materias(idma)
);

/*agregado de tabla alumno*/
create table alumnos(
    idal integer auto_increment primary key not null,
    idca integer not null,
    nombre varchar(50) not null,
    ape_pat varchar(50) not null,
    ape_mat varchar(50) not null, 
    semestre varchar(50) not null,
    salon int not null,
    turno varchar(30) not null,
    foreign key (idca) references carrera(idca),
    foreign key (salon) references edificio(id_edif)
);

create table usarios(
    clave int primary key,
    correo varchar(50),
    nombre varchar(50),
    pass varchar(50);
);

create table edificio(
    id_edif int primary key,
    salon varchar(30),
    nombre varchar(30),
    letra varchar(5)
);

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

/*Insercion de carreras*/
insert into carrera values(1,"Arquitectura","LZ"),(2,"Contador Público","LN"),(3,"Ing. Electromecánica","IT"),
(4,"Ing. en Animación Digital y Efectos Visuales","IA"),(5,"Ing. en Gestión Empresarial","IB"),(6,"Ing. en Materiales","IH"),
(7,"Ing. en Sistemas Computacionales","IC"),(8,"Ing. Industrial","ID"),(9,"Ing. Mecatrónica","IM"),(10,"Ing. Química","IF"),
(11,"Licenciatura en Turismo","LO"),(12,"Ing. en Logística","IJ");

/*Insercion de materias, arquitectura*/
/*primer semestre*/
insert into materias values(0,1,"Fundamentos Teoricos del Diseño I",4,"Primero"),
(0,1,"Fundamentos de Investigacion",4,"Primero"),
(0,1,"Analisis Porcentual",4,"Primero"),
(0,1,"Geometria Descriptiva I",4,"Primero"),
(0,1,"Analisis Critico de la Arquitectura y el Arte I",4,"Primero"),
(0,1,"Taller de Expresion Plastica",6,"Primero");
/*segundo semestre*/
insert into materias values(0,1,"Fundamentos teoricos del diseño II",4,"Segundo"),
(0,1,"Metodologia para el Diseño",4,"Segundo"),
(0,1,"Matematicas Aplicadas a la Arquitectura",4,"Segundo"),
(0,1,"Geometria Descriptiva II",4,"Segundo"),
(0,1,"Analisis Critico de la Arquitectura y el arte II",4,"Segundo"),
(0,1,"Taller de Lenguaje Arquitectonico I",6,"Segundo");
/*tercer semestre*/
insert into materias values(0,1,"Taller de Diseño I",6,"Tercero"),
(0,1,"Propiedades y Comportamiento de los Materiales",4,"Tercero"),
(0,1,"Estructuras I",4,"Tercero"),
(0,1,"Topografia",4,"Tercero"),
(0,1,"Analisis Critico de la Arquitectura y el Arte III",4,"Tercero"),
(0,1,"Taller de Lenguaje Arquitectonico II",6,"Tercero");
/*cuarto semestre*/
insert into materias values(0,1,"Taller de Diseño II",8,"Cuarto"),
(0,1,"Taller de Construccion I",6,"Cuarto"),
(0,1,"Estructuras II",4,"Cuarto"),
(0,1,"Pensamiento Arquitectonico Contemporaneo",4,"Cuarto"),
(0,1,"Analisis Critico de la Arquitectura y el Arte IV",4,"Cuarto"),
(0,1,"Instalaciones I",4,"Cuarto");
/*quinto semestre*/
insert into materias values(0,1,"Taller de Diseño III",2,"Quinto"),
(0,1,"Taller de Construccion II",6,"Quinto"),
(0,1,"Estructuras de Concreto",6,"Quinto"),
(0,1,"Desarrollo Sustentable",5,"Quinto"),
(0,1,"Estetica",3,"Quinto"),
(0,1,"Instalaciones II",4,"Quinto");
/*sexto semestre*/
insert into materias values(0,1,"Taller de Diseño IV",8,"Sexto"),
(0,1,"Estructuras de Acero",4,"Sexto"),
(0,1,"Taller de Investigacion I",4,"Sexto"),
(0,1,"Urbanismo 1",4,"Sexto"),
(0,1,"Administracion de la Construccion I",4,"Sexto");
/*septimo semestre*/
insert into materias values(0,1,"Taller de Diseño V",8,"Septimo"),
(0,1,"Taller de Etica",4,"Septimo"),
(0,1,"Taller de Investigacion II",4,"Septimo"),
(0,1,"Urbanismo II",4,"Septimo"),
(0,1,"Administracion de la Construccion II",4,"Septimo");
/*octavo semestre*/
insert into materias values(0,1,"Taller de Diseño VI",8,"Octavo"),
(0,1,"Gestion Urbanistica",4,"Octavo"),
(0,1,"Administracion de Empresas Constructoras I",4,"Octavo");
/*noveno semestre*/
insert into materias values(0,1,"Administracion de Empresas Construccion II",4,"Noveno");
/*decimo semestre*/
insert into materias values(0,1,"Residencia Profesional",10,"Decimo");


/*Insercion de materias, contador publico*/
/*primer semestre*/
insert into materias values(0,2,"Introduccion a la Contabilidad Financiera",6,"Primero"),
(0,2,"Administracion",4,"Primero"),
(0,2,"Algebra Lineal",5,"Primero"),
(0,2,"Fundamentos de Derecho",4,"Primero"),
(0,2,"Desarrollo Humano",4,"Primero"),
(0,2,"Fundamentos de Investigacion",4,"Primero");
/*segundo semestre*/
insert into materias values(0,2,"Contabilidad Financiera I",6,"Segundo"),
(0,2,"Taller de Etica",4,"Segundo"),
(0,2,"Calculo Diferencial e Integral",5,"Segundo"),
(0,2,"Derecho Mercantil",4,"Segundo"),
(0,2,"Dinamica Social",4,"Segundo"),
(0,2,"Estadistica Administrativa I",4,"Segundo"),
(0,2,"Comunicacion Humana",4,"Segundo");
/*tercer semestre*/
insert into materias values(0,2,"Contabilidad Financiera II",6,"Tercero"),
(0,2,"Mercadotecnia",4,"Tercero"),
(0,2,"Matematicas Financieras",4,"Tercero"),
(0,2,"Derecho Laborar y Seguridad Social",4,"Tercero"),
(0,2,"Gestion del Talentoi Humano",4,"Tercero"),
(0,2,"Estadistica Administrativa II",4,"Tercero"),
(0,2,"Taller de Informatica I",4,"Tercero");
/*cuarto semestre*/
insert into materias values(0,2,"Contabilidad de Sociedades",5,"Cuarto"),
(0,2,"Sistemas de Costos Historicos",5,"Cuarto"),
(0,2,"Microeconomia",4,"Cuarto"),
(0,2,"Derecho Tributario",4,"Cuarto"),
(0,2,"Analisis e Interpretacion de Estados Financieros",4,"Cuarto"),
(0,2,"Taller de Investigacion I",4,"Cuarto"),
(0,2,"Desarrollo Sustentable",5,"Cuarto");
/*quinto semestre*/
insert into materias values(0,2,"Contabilidad Avanzada",5,"Quinto"),
(0,2,"Sistemas de Costos Predeterminados",5,"Quinto"),
(0,2,"Macroeconomia",4,"Quinto"),
(0,2,"Impuestos Personas Morales",6,"Quinto"),
(0,2,"Fundamentos de Auditoria",4,"Quinto"),
(0,2,"Taller de Investigacion II",4,"Quinto"),
(0,2,"Administracion de la Produccion y de las Operaciones",4,"Quinto");
/*sexto semestre*/
insert into materias values(0,2,"Contabilidad Internacional",5,"Sexto"),
(0,2,"Gestion y Toma de Decisiones",5,"Sexto"),
(0,2,"Administracion Estrategica",4,"Sexto"),
(0,2,"Impuestos Personas Fisicas",6,"Sexto"),
(0,2,"Auditoria para Efectos Financieros",5,"Sexto"),
(0,2,"Economia Internacional",4,"Sexto"),
(0,2,"Planeacion Financiera",4,"Sexto");
/*septimo semestre*/
insert into materias values(0,2,"Seminario de Contaduria",3,"Septimo"),
(0,2,"Elaboracion de Proyectos de Inversion",4,"Septimo"),
(0,2,"Otros Impuestos Y Contibuciones",6,"Septimo"),
(0,2,"Auditoria para Efectos Fiscales",5,"Septimo"),
(0,2,"Taller de Informatica II",4,"Septimo"),
(0,2,"Alternativas de Inversion y Financiamiento",4,"Septimo");
/*octavo semestre*/
insert into materias values(0,2,"Sustentabilidad Financiera",3,"Octavo"),
(0,2,"Estrategias Fiscales",4,"Octavo"),
(0,2,"Seminario de Finanzas",4,"Octavo"),
(0,2,"Recursos Informaticos Avanzados de la Empresa",4,"Octavo"),
(0,2,"Habilidades Directivas",3,"Octavo"),
(0,2,"Administracion Financiera",4,"Octavo"),
(0,2,"Entorno Fiscal Aduanero en Mexico",3,"Octavo"); 
/*noveno semestre*/
insert into materias values(0,2,"Residencia Profesional",10,"Noveno");

/*Insercion de materias, Electromecanica*/
/*primer semstre*/
insert into materias values(0,3,"Taller de Etica",4,"Primero"),
(0,3,"Calculo Diferencial",5,"Primero"),
(0,3,"Introduccion a la Programacion",4,"Primero"),
(0,3,"Desarrollo Sustentable",5,"Primero"),
(0,3,"Quimica",4,"Primero"),
(0,3,"Fundamentos de Investigacion",4,"Primero");
/*segundo semestre*/
insert into materias values(0,3,"Estatica",4,"Segundo"),
(0,3,"Calculo Integral",5,"Segundo"),
(0,3,"Algebra Lineal",5,"Segundo"),
(0,3,"Metrologia y Normalizacion",5,"Segundo"),
(0,3,"Tecnologia de los Materiales",4,"Segundo"),
(0,3,"Dibujo Electronmecanico",5,"Segundo");
/*tercer semestre*/
insert into materias values(0,3,"Dinamica",4,"Tercero"),
(0,3,"Calculo vectorial",5,"Tercero"),
(0,3,"Processos de Manufacrtura",4,"Tercero"),
(0,3,"Electricidad y magnetismo",4,"Tercero"),
(0,3,"Mecanicas de Materiales",6,"Tercero"),
(0,3,"Probabilidad y Estadistica",4,"Tercero");
/*cuarto semestre*/
insert into materias values(0,3,"Analisis y Sintesis de Mecanismos",4,"Cuarto"),
(0,3,"Ecuaciones Diferenciales",5,"Cuarto"),
(0,3,"Termodinamica",4,"Cuarto"),
(0,3,"Analisis de Circuitos Electricos de CD",5,"Cuarto"),
(0,3,"Mecanica de Fluidos",4,"Cuarto"),
(0,3,"Electronica Analogica",5,"Cuarto");
/*quinto semestre*/
insert into materias values(0,3,"Diseño de Elementos de Maquina",5,"Quinto"),
(0,3,"Diseño e Ingenieria Asistidos por Computadora",4,"Quinto"),
(0,3,"Transferencia de Calor",4,"Quinto"),
(0,3,"Analisis de Circuitos Electronicos de CA",5,"Quinto"),
(0,3,"Sistemas y Maquinas de Fluido",6,"Quinto"),
(0,3,"Electronica Digital",4,"Quinto");
/*sexto semestre*/
insert into materias values(0,3,"Maquinas y Equipos Termicos I",4,"Sexto"),
(0,3,"Ahorro de Energia",6,"Sexto"),
(0,3,"Instalaciones Electricas",5,"Sexto"),
(0,3,"Maquinas Electricas",6,"Sexto"),
(0,3,"Administracion y Tecnicas de Mntenimiento",6,"Sexto"),
(0,3,"Taller de Investigacion I",4,"Sexto");
/*septimo semestre*/
insert into materias values(0,3,"Maquinas y Equipos Termicos II",4,"Septimo"),
(0,3,"Sistemas Electronicos de Potencia",5,"Septimo"),
(0,3,"Controloes Electricos",5,"Septimo"),
(0,3,"Ingenieria de Control Clasico",6,"Septimo"),
(0,3,"Taller de investigacion II",4,"Septimo"),
(0,3,"Microcontroladores",4,"Septimo"),
(0,3,"Calidad en Sistemas de Produccion",4,"Septimo");
/*octavo semestre*/
insert into materias values(0,3,"Refrigeracion y Aire Acondicionado",5,"Octavo"),
(0,3,"Subestaciones Electricas",5,"Octavo"),
(0,3,"Sistemas Hidraulicos y Neumaticos de Potencia",6,"Octavo"),
(0,3,"Formulacion y Evaluacion de Proyectos",4,"Octavo"),
(0,3,"Automatas Programables",4,"Octavo"),
(0,3,"Sistemas Integrados de Manufactua",4,"Octavo"),
(0,3,"Instrumentacion Industrial",4,"Octavo");
/*noveno semestre*/
insert into materias values(0,3,"Robotica",5,"Noveno"),
(0,3,"Residencia Profesional",10,"Noveno");

/*Insercion de materias, Animacion*/
/*primer semestre*/
insert into materias values(0,4,"El Emprendedor y la Innovacxion",5,"Primero"),
(0,4,"Diseño Industrial",5,"Primero"),
(0,4,"Introduccion a las Producciones de Animacion",5,"Primero"),
(0,4,"Taller de Etica",4,"Primero"),
(0,4,"Fundamentos de Programacion",5,"Primero"),
(0,4,"Algebra Lineal",5,"Primero");
/*segundo semestre*/
insert into materias values(0,4,"Psicologia del Comportamiento Humano",4,"Segundo"),
(0,4,"Introduccion al Modelado 3D",4,"Segundo"),
(0,4,"Arte Digital",5,"Segundo"),
(0,4,"Fundamentos de Investigacion",4,"Segundo"),
(0,4,"Programacion Orientada a objetos",5,"Segundo"),
(0,4,"Calculo Diferencial",5,"Segundo");
/*tercero semestre*/
insert into materias values(0,4,"Proyecto de Vida y Carrera",4,"Tercero"),
(0,4,"Modelado 3D",5,"Tercero"),
(0,4,"Diseño Artistico",5,"Tercero"),
(0,4,"Fisica General",5,"Tercero"),
(0,4,"Estructura de Datos",5,"Tercero"),
(0,4,"Calculo Integral",5,"Tercero");
/*cuarto semestre*/
insert into materias values(0,4,"Planeacion de Negocios",4,"Cuarto"),
(0,4,"Texturas y Materiales",5,"Cuarto"),
(0,4,"Principios de Fotografia y Video ",5,"Cuarto"),
(0,4,"Fisica Aplicada",5,"Cuarto"),
(0,4,"Infraestructura Computacional",5,"Cuarto"),
(0,4,"Matematicas Discretas",5,"Cuarto");
/*quinto semestre*/
insert into materias values(0,4,"Fundamentos de Audio Digital",5,"Quinto"),
(0,4,"Rigging",5,"Quinto"),
(0,4,"Fundamnetos de Animacion",4,"Quinto"),
(0,4,"Desarrollo Sustentable",5,"Quinto"),
(0,4,"Programacion de Graficas por Computadora",5,"Quinto"),
(0,4,"Calculo Vectorial",5,"Quinto");
/*sexto semestre*/
insert into materias values(0,4,"Direccion y Negacion",4,"Sexto"),
(0,4,"Ilumincaion y Render",5,"Sexto"),
(0,4,"Animacion Avanzada",5,"Sexto"),
(0,4,"Taller de Investigacion I",4,"Sexto"),
(0,4,"Simulacion",5,"Sexto"),
(0,4,"Ecuaicones Diferenciales",5,"Sexto");
/*septimo semestre*/
insert into materias values(0,4,"Introduccion a Software Especializado",6,"Septimo"),
(0,4,"Diseño de Personajes",6,"Septimo"),
(0,4,"Formulacion y Evaluacion de Proyectos",5,"Septimo"),
(0,4,"Composicion Digital",6,"Septimo"),
(0,4,"Desarrollo de Proyectos en la Industria de la Animacion",5,"Septimo"),
(0,4,"Taller de Investigacion II",4,"Septimo");
/*octavo semestre*/
insert into materias values(0,4,"Narrativa Publicitaria",5,"Octavo"),
(0,4,"Narrativa Publicitaria",5,"Octavo"),
(0,4,"Elementos Cineticos",6,"Octavo"),
(0,4,"Programacion de Animacion 2D",6,"Octavo"),
(0,4,"Animacion de Cortinillas para Publicidad",4,"Octavo"),
(0,4,"Integracion Empresarial",6,"Octavo"),
(0,4,"Efectos Visuales",5,"Octavo");
/*noveno semestre*/
insert into materias values(0,4,"Residencia Profesional",10,"Noveno");

/*Insercion de materias, gestion*/
/*Primer semstre*/
insert into materias values(0,5,"Fundamentos de Investigacion",4,"Primero"),
(0,5,"Calculo Diferencial",5,"Primero"),
(0,5,"Desarrollo Humano",4,"Primero"),
(0,5,"Fundamentos de Gestion Empresarial",5,"Primero"),
(0,5,"Fundamentos de Fisica",4,"Primero"),
(0,5,"Fundamentos de Quimica",5,"Primero");
/*Segundo semstre*/
insert into materias values(0,5,"Software de Aplicacion Ejecutivo",5,"Segundo"),
(0,5,"Calculo Integral",5,"Segundo"),
(0,5,"Contabilidad Orientada a los Negocios",4,"Segundo"),
(0,5,"Dinamica Social",4,"Segundo"),
(0,5,"Taller de Etica",4,"Segundo"),
(0,5,"Legislacion Laboral",5,"Segundo");
/*Tercero semstre*/
insert into materias values(0,5,"Macro Legal de las Organizaciones",4,"Tercero"),
(0,5,"Probabilida y Estadistica Descriptiva",5,"Tercero"),
(0,5,"Costos Empresariales",5,"Tercero"),
(0,5,"Habilidades Directivas I",4,"Tercero"),
(0,5,"Economia Empresarial",5,"Tercero"),
(0,5,"Algebra Lineal",5,"Tercero");
/*Cuarto semstre*/
insert into materias values(0,5,"Ingenieria Economica",5,"Cuarto"),
(0,5,"Estadistica Inferencial I",6,"Cuarto"),
(0,5,"Instrumentos de Presupuestacion EMpresarial",5,"Cuarto"),
(0,5,"Habilidades Directivas II",4,"Cuarto"),
(0,5," Entorno Macroeconomico",5,"Cuarto"),
(0,5,"Investigacion de Operaciones",5,"Cuarto");
/*Quinto semstre*/
insert into materias values(0,5,"Finanzas en las Organizaciones",5,"Quinto"),
(0,5,"Estadistica Infernecial II",6,"Quinto"),
(0,5,"Ingenieria de Procesos",5,"Quinto"),
(0,5,"Gestion del Capital Humano",6,"Quinto"),
(0,5,"Taller de Investigacion",4,"Quinto"),
(0,5,"Mercadotectina",5,"Quinto");
/*Sexto semstre*/
insert into materias values(0,5,"Administracion de la Salud y Seguridad Ocupacional",5,"Sexto"),
(0,5,"EL emprendedor y la Innovacion",5,"Sexto"),
(0,5,"Gestion de la Produccion I",4,"Sexto"),
(0,5,"Diseño Organizacional",5,"Sexto"),
(0,5,"Taller de Investigacion II",4,"Sexto"),
(0,5,"Sistemas de Informacion de Mercadotecnia",5,""Sexto);
/*Septimo semstre*/
insert into materias values(0,5,"Calidad Aplicada a la Gestion Empresarial",5,"Septimo"),
(0,5,"Plan de Negocios",5,"Septimo"),
(0,5,"Gestionde  la Produccion II",4,"Septimo"),
(0,5,"Gestion Estrategica",5,"Septimo"),
(0,5,"Desarrollo Sustentable",5,"Septimo"),
(0,5,"Mercadotecia Electronica",5,"Septimo");
/*Octavo semstre*/
insert into materias values(0,5,"Cadena de Suministros",5,"Octavo"),
(0,5,"Desarrollo de Nuvos Productos",6,"Octavo"),
(0,5,"Administracion de Procesos de Manufactura",5,"Octavo"),
(0,5,"Administracion de Servicios",5,"Octavo"),
(0,5,"Negociacion y Solucion de Conflictos en las Organizaciones",4,"Octavo"),
(0,5,"Comercio Internacional",5,"Octavo"),
(0,5,"Simualcion de Procesos Industriales",5,"Octavo");
/*Decimo semstre*/
insert into materias values(0,5,"Rsidencia Profecional",10,"Decimo");

/*Insercion de materias, Ing. en Materiales*/
/*primer semestre*/
insert into materias values(0, 6, "Fundamento de investigacion", 4, "Primero"),
(0, 6, "Taller de Etica", 4, "Primero"),
(0, 6, "Calculo Diferencial", 5, "Primero"),
(0, 6, "Quimica", 5, "Primero" ),
(0, 6, "Dibujo Asistido por Computadora", 4, "Primero" ),
(0, 6, "Fundamentos de Administracion", 4, "Primero" );


/*segundo semestre*/
insert into materias values(0, 6, "Probabilidad y Estadistica", 5, "Segundo" ),
(0, 6, "Metrologia y Normalizacion", 4, "Segundo" ),
(0, 6, "Calculo Integral", 5, "Segundo" ),
(0, 6, "Algebra Lineal", 5, "Segundo" ),
(0, 6, "Taller de seguridad e Higiene", 3, "Segundo" ),
(0, 6, "Mecanica Clasica", 5, "Segundo" );

/*tercer semestre*/
insert into materias values(0, 6, "Electricidad, Magnetismo y Optica", 4, "Tercero" ),
(0, 6, "Mineralogia y Obtencion de materiales", 6, "Tercero" ),
(0, 6, "Calculo Vectorial", 5, "Tercero" ),
(0, 6, "Ecuaciones Diferenciales", 5, "Tercero" ),
(0, 6, "Quimica Organica", 4, "Tercero" ),
(0, 6, "Comportamiento Mecanico de Materiales", 6, "Tercero" );

/*cuarto semestre*/
insert into materias values(0, 6, "Caracterizacion Estructural", 4, "Cuarto" ),
(0, 6, "Fisica del Estado Solido", 6, "Cuarto" ),
(0, 6, "Programacion de Metodos Numericos", 5, "Cuarto" ),
(0, 6, "Termodinamica para Ingenieria en Materiales", 5, "Cuarto" ),
(0, 6, "Materiales Polimericos", 6, "Cuarto" ),
(0, 6, "Analisis de Fallas Mecanicas", 5, "Cuarto" );

/*quinto semestre*/
insert into materias values(0, 6, "Tecnicas de Analisis", 5, "Quinto" ),
(0, 6, "Diagramas de Equilibrio", 4, "Quinto" ),
(0, 6, "Produccion de Metales no Ferroso", 5, "Quinto" ),
(0, 6, "Equilibrio Fisico-Quimico", 4, "Quinto" ),
(0, 6, "Fenomenos de Transporte", 5, "Quinto" ),
(0, 6, "Desarrollo Sustentable", 5, "Quinto" );

/*sexto semestre*/
insert into materias values(0, 6, "Taller de Investigacio I", 4, "Sexto" ),
(0, 6, "Solidificacion", 4, "Sexto" ),
(0, 6, "Produccion de Materiales Ferrosos", 4, "Sexto" ),
(0, 6, "Cinetica", 4, "Sexto" ),
(0, 6, "Transiciones de Fases", 4, "Sexto" ),
(0, 6, "Corrosion y Degradacion", 5, "Sexto" );

/*septimo semestre*/
insert into materias values(0, 6, "Taller de Investifacion II", 4, "Septimo" ),
(0, 6, "Tratamiento Termicos", 4, "Septimo" ),
(0, 6, "Procesos de Manufactura", 5, "Septimo" ),
(0, 6, "Materiales Ceramicos", 6, "Septimo" ),
(0, 6, "Calidad", 4, "Septimo" ),
(0, 6, "Introduccion a los Nanomateriales", 4, "Septimo" ),
(0, 6, "Propiedades Fisicas y Mecanicas de los Materiales Funcionalizados", 6, "Septimo" );

/*octavo semestre*/
insert into materias values(0, 6, "Formulacion y Evaluacion de Proyectos", 5, "Octavo" ),
(0, 6, "Materiales Compuestos", 6, "Octavo" ),
(0, 6, "Introduccion a los Biomateriales", 4, "Octavo" ),
(0, 6, "Caracterizacion de Materiales Funcionalizados", 6, "Octavo" ),
(0, 6, "Procesos de Fabricacion de Materiales Funcionalizados", 6, "Octavo" ),
(0, 6, "Innovacion Tecnologia con Materiales Funcionalizados", 7, "Octavo" );

/*noveno semestre*/
(0, 6, "RESIDENCIA PROFESIONAL", 4, "Noveno" );

/*Insercion de materias, Ing. en Sistemas*/
/*primero semestre*/
insert into materias values(0, 7, "Calculo Diferencial", 5, "Primero" ),
(0, 7, "Fundamentos de Programacion", 5, "Primero" ),
(0, 7, "Taller de Etica", 4, "Primero" ),
(0, 7, "Matematica Discretas", 5, "Primero" ),
(0, 7, "Taller de Admistracion", 4, "Primero" ),
(0, 7, "Fundamentos de Investigacion", 4, "Primero" );

/*segundo semestre*/
insert into materias values(0, 7, "Calculo Integral", 5, "Segundo" ),
(0, 7, "Programacion Orientada a Objetos", 5, "Segundo" ),
(0, 7, "Contabilidad Financiera", 4, "Segundo" ),
(0, 7, "Quimica", 4, "Segundo" ),
(0, 7, "Algebra Lineal", 5, "Segundo" ),
(0, 7, "Probabilidad y Estadistica", 5, "Segundo" );

/*tercero semestre*/
insert into materias values(0, 7, "Calculo Vectorial", 5, "Tercero" ),
(0, 7, "Estructura de Datos", 5, "Tercero" ),
(0, 7, "Cultura Empresarial", 4, "Tercero" ),
(0, 7, "Investigacion de Operaciones", 4, "Tercero" ),
(0, 7, "Desarrollo Sustentable", 5, "Tercero" ),
(0, 7, "Fisica General", 5, "Tercero" );

/*cuarto semestre*/
insert into materias values(0, 7, "Ecuaciones Diferenciales", 5, "Cuarto" ),
(0, 7, "Metodos Numericos", 5, "Cuarto" ),
(0, 7, "Topicos Avanzados de Porgramacion", 5, "Cuarto" ),
(0, 7, "Findamentos de Base de Datos", 5, "Cuarto" ),
(0, 7, "Simulacion", 5, "Cuarto" ),
(0, 7, "Principios Electricos y Aplicaciones Digititales", 5, "Cuarto" );


/*quinto semestre*/
insert into materias values(0, 7, "Graficacion", 4, "Quinto" ),
(0, 7, "Fundamentos de Telecomunicaciones", 4, "Quinto" ),
(0, 7, "Taller de Sistemas Operativos", 4, "Quinto" ),
(0, 7, "Taller de Base de Datos", 4, "Quinto" ),
(0, 7, "Fundamentos de Ingenieria en Software", 4, "Quinto" ),
(0, 7, "Arquitectura de Computadoras", 5, "Quinto" );

/*sexto semestre*/
insert into materias values(0, 7, "Lenguajes y Automatas I", 5, "Sexto" ),
(0, 7, "Redes de Computadoras", 5, "Sexto" ),
(0, 7, "Taller de Sistema Operativo", 4, "Sexto" ),
(0, 7, "Administracion de Base de Datos", 5, "Sexto" ),
(0, 7, "Ingenieria de Software", 5, "Sexto" ),
(0, 7, "Lenguaje de Interfaz", 4, "Sexto" );

/*septimo semestre*/
insert into materias values(0, 7, "Lenguaje y Automatas II", 5, "Septimo" ),
(0, 7, "Conmutacion y Enrutamiento en Redes de Datos", 5, "Septimo" ),
(0, 7, "Taller de Investigacion I", 4, "Septimo" ),
(0, 7, "Sistemas Programables", 4, "Septimo" ),
(0, 7, "Gestion de Proyecto de Software", 6, "Septimo" ),
(0, 7, "Base de Datos Distribuidos", 5, "Septimo" ),
(0, 7, "Seguridad Informatica", 5, "Septimo" );

/*octavo semestre*/
insert into materias values(0, 7, "Programacion Logica y Funcional", 4, "Octavo" ),
(0, 7, "Administracion de Redes", 4, "Octavo" ),
(0, 7, "Taller de Investigacion II", 4, "Octavo" ),
(0, 7, "Programacion WEB", 5, "Octavo" ),
(0, 7, "Redes Inalambricas", 4, "Octavo" ),
(0, 7, "Administracion, Configuracion y Mantenimiento de Redes", 6, "Octavo" ),
(0, 7, "Sistemas Distribuidos", 5, "Octavo" );

/*noveno semestre*/
insert into materias values(0, 7, "Inteligencia Artificial", 4, "Noveno" ),
(0, 7, "RESIDENCIA PROFESIONAL", 10, "Noveno" );

/*Insercion de materias, industrial*/
/*Primero semestre*/
insert into materias values(0,8,"Fundamentos de Investigacion",4,"Primero"),
(0,8,"Taller de Etica",4,"Primero"),
(0,8,"Calculo Diferencial",5,"Primero"),
(0,8,"Taller de Herramientas Intelectuales",4,"Primero"),
(0,8,"Quimica",4,"Primero"),
(0,8,"Dibujo Industrial",6,"Primero");
/*Segundo semestre*/
insert into materias values(0,8,"Electricidad y Electronica Industrial",4,"Segundo"),
(0,8,"Propiedad de los materiales",4,"Segundo"),
(0,8,"Calculo Integral",5,"Segundo"),
(0,8,"Probabilidad y Estadistica",4,"Segundo"),
(0,8,"Analisis de la Realidad Nacional",3,"Segundo"),
(0,8,"Taller de Liderazgo",4,"Segundo");
/*Tercero semestre*/
insert into materias values(0,8,"Metrologia y Normalizacion",4,"Tercero"),
(0,8,"Algebra Lineal",5,"Tercero"),
(0,8,"Calculo Vectorial",5,"Tercero"),
(0,8,"Economía",4,"Tercero"),
(0,8,"Estadistica Inferencial I",5,"Tercero"),
(0,8,"Estudio del Trabajo I",6,"Tercero");
/*Cuarto semestre*/
insert into materias values(0,8,"Procesos de Fabricacion",4,"Cuarto"),
(0,8,"Fisica",4,"Cuarto"),
(0,8,"Algoritmos y Lenguajes de Programacion",4,"Cuarto"),
(0,8,"Investigacion de operaciones I",4,"Cuarto"),
(0,8,"Estadistica Inferencial II",5,"Cuarto"),
(0,8,"Estudio del Trabajo II",6,"Cuarto"),
(0,8,"Higiene y Seguridad Industrial",5,"Cuarto");
/*Quinto semestre*/
insert into materias values(0,8,"Administraciond eProyectos",3,"Quinto"),
(0,8,"Gestion de Costos",4,"Quinto"),
(0,8,"Administracion de las OperacionesI",4,"Quinto"),
(0,8,"Investigacionde Operaciones II",4,"Quinto"),
(0,8,"Control Estadistico de la Calidad",5,"Quinto"),
(0,8,"Ergonomia",5,"Quinto"),
(0,8,"Desarrollo Sustentable",5,"Quinto");
/*Sexto semestre*/
insert into materias values(0,8,"Taller de Investigacion I",4,"Sexto"),
(0,8,"Ingenieria Economica",4,"Sexto"),
(0,8,"Administracion de las Opercaiones II",4,"Sexto"),
(0,8,"Simulacion",4,"Sexto"),
(0,8,"Administracion del Mantenimiento",4,"Sexto"),
(0,8,"Mercadotecnia",5,"Sexto");
/*Septimo semestre*/
insert into materias values(0,8,"Taller de Investigacion II",4,"Septimo"),
(0,8,"Planeacion Financiera",4,"Septimo"),
(0,8,"Planeacion y Diseño de Instalaciones",4,"Septimo"),
(0,8,"Sistema de Manufactura",5,"Septimo"),
(0,8,"Logistica y cadenas de Suministro",4,"Septimo"),
(0,8,"Gestion de los Sistemas de Calidad",4,"Septimo"),
(0,8,"Ingenieria de Sistemas",3,"Septimo"),
(0,8,"Disño Asistido por Computadora",6,"Septimo");
/*Octavo semestre*/
insert into materias values(0,8,"Formulacion y Evaluacion de Proyectos",4,"Octavo"),
(0,8,"Relaciones Industriales",4,"Octavo"),
(0,8,"Contorl Numerico Computarizado",4,"Octavo"),
(0,8,"Fundamentos de Robotica",4,"Octavo"),
(0,8,"Topicos de Manufactira",4,"Octavo"),
(0,8,"Seis Sigma",4,"Octavo"),
(0,8,"Ingenieria de Calidad",5,"Octavo"),
(0,8,"Manufactura Integrada por Computadora",5,"Octavo");
/*Noveno semestre*/
insert into materias values(0,8,"Residencia Profesional",10,"Noveno");
/*Insercion de materias, Ing. en Mecatronica*/
/*primer semestre*/
insert into materias values(0, 9, "Quimica", 4, "Primero" ),
(0, 9, "Calculo Diferencial", 5, "Primero" ),
(0, 9, "Taller de Etica", 4, "Primero" ),
(0, 9, "Dibujo Asistido por Computadora", 4, "Primero" ),
(0, 9, "Metrologia y Normalizacion", 4, "Primero" ),
(0, 9, "Fundamentos de Investigacion", 4, "Primero" );

/*segundo semestre*/
insert into materias values(0, 9, "Calculo Integral", 5, "Segundo" ),
(0, 9, "Algebra Lineal", 5, "Segundo" ),
(0, 9, "Ciencia e Ingenieria de Materiales", 5, "Segundo" ),
(0, 9, "Programacion Basica", 5, "Segundo" ),
(0, 9, "Estadistica y Control de Calidad", 4, "Segundo" ),
(0, 9, "Administracion y Contabilidad", 4, "Segundo" );

/*tercero semestre*/
insert into materias values(0, 9, "Calculo Vectorial", 5, "Tercero" ),
(0, 9, "Procesos de Fabricacion", 4, "Tercero" ),
(0, 9, "Electromagnetismo", 5, "Tercero" ),
(0, 9, "Estatica", 4, "Tercero" ),
(0, 9, "Metodos Numericos", 4, "Tercero" ),
(0, 9, "Desarrollo Sustentable", 5, "Tercero" );

/*cuarto semestre*/
insert into materias values(0, 9, "Ecuaciones Diferenciales", 5, "Cuarto" ),
(0, 9, "Fundamentos de Termodinamica", 4, "Cuarto" ),
(0, 9, "Mecanica de Materiales", 6, "Cuarto" ),
(0, 9, "Dinamica", 4, "Cuarto" ),
(0, 9, "Analisis de Circuito Electricos", 6, "Cuarto" );

/*quinto semestre*/
insert into materias values(0, 9, "Maquinas Electricas", 5, "Quinto" ),
(0, 9, "Electronica Analogica", 6, "Quinto" ),
(0, 9, "Mecanismos", 5, "Quinto" ),
(0, 9, "Analisis de Fluidos", 4, "Quinto" ),
(0, 9, "Taller de Investigacio I", 4, "Quinto" );

/*sexto semestre*/
insert into materias values(0, 9, "Electronica de Potencia Aplicada", 6, "Sexto" ),
(0, 9, "Instrumentacion", 5, "Sexto" ),
(0, 9, "Diseños de Elementos Mecanicos", 5, "Sexto" ),
(0, 9, "Electronica Digital", 5, "Sexto" ),
(0, 9, "Vibraciones Mecanicas", 5, "Sexto" ),
(0, 9, "Taller de Investigacion II", 4, "Sexto" ),
(0, 9, "Servicio Social", 10, "Sexto" );

/*septimo semestre*/
insert into materias values(0, 9, "Dinamica de Sistemas", 5, "Septimo" ),
(0, 9, "Manufactura Avanzada", 5, "Septimo" ),
(0, 9, "Circuitos Hidraulicos y Neumaticos", 6, "Septimo" ),
(0, 9, "Mantenimiento", 5, "Septimo" ),
(0, 9, "Microcontroladores", 5, "Septimo" ),
(0, 9, "Programacion Avanzada", 6, "Septimo" ),
(0, 9, "Factores de Riesgo Industriales", 4, "Septimo" );

/*octavo semestre*/
insert into materias values(0, 9, "Control", 6, "Octavo" ),
(0, 9, "Formulacion y Evaluacion de Proyectos", 3, "Octavo" ),
(0, 9, "Diseño Asistido por Computadora", 6, "Octavo" ),
(0, 9, "Diseño de Control de Motores Electricos", 5, "Octavo" ),
(0, 9, "Interfaces y Redes Industriales", 5, "Octavo" ),
(0, 9, "Medicion y Mejoramineto de Procesos", 5, "Octavo" );

/*noveno semestre*/
insert into materias values(0, 9, "Robotica", 5, "Noveno" ),
(0, 9, "RESIDENCIA PROFESIONAL", 10, "Noveno" );

/*Insercion de materias, Ing. Quimica*/
/*primer semestre*/
insert into materias values(0, 10, "Taller de Etica", 4, "Primero" ),
(0, 10, "Fundamentos de Investigacion", 4, "Primero" ),
(0, 10, "Calculo Diferencial", 4, "Primero" ),
(0, 10, "Quimica Inorganica", 5, "Primero" ),
(0, 10, "Programacion", 4, "Primero" ),
(0, 10, "Dibujo Asistido por computadora", 3, "Primero" );

/*segundo semestre*/
insert into materias values(0, 10, "Algebra Lineal", 5, "Segundo" ),
(0, 10, "Mecanica Clasica", 5, "Segundo" ),
(0, 10, "Calculo Integral", 5, "Segundo" ),
(0, 10, "Quimica Organica I", 5, "Segundo" ),
(0, 10, "Termodinamica", 5, "Segundo" ),
(0, 10, "Quimica Analitica", 6, "Segundo" );

/*tercero semestre*/
insert into materias values(0, 10, "Analisis de Datos Experimentales", 5, "Tercero" ),
(0, 10, "Electricidad, Magnetismo y Optica", 5, "Tercero" ),
(0, 10, "Calculo Vectorial", 5, "Tercero" ),
(0, 10, "Quimica Organica II", 5, "Tercero" ),
(0, 10, "Balance de Materia y Energia", 5, "Tercero" ),
(0, 10, "Gestion de Calidad", 5, "Tercero" );

/*cuarto semestre*/
insert into materias values(0, 10, "Metodos Numericos", 4, "Cuarto" ),
(0, 10, "Ecuaciones Diferenciales", 5, "Cuarto" ),
(0, 10, "Mecanismos de Transferencia", 5, "Cuarto" ),
(0, 10, "Ingenieria Ambiental", 5, "Cuarto" ),
(0, 10, "Fisicoquimica I", 5, "Cuarto" ),
(0, 10, "Analisis Instrumental", 5, "Cuarto" );

/*quinto semestre*/
insert into materias values(0, 10, "Desarrollo Sustentable", 5, "Quinto" ),
(0, 10, "Ingenieria de Costos", 4, "Quinto" ),
(0, 10, "Balance de Momento, Calor y Masa", 6, "Quinto" ),
(0, 10, "Proceso de Separacion I", 5, "Quinto" ),
(0, 10, "Fisicoquimica II", 5, "Quinto" );

/*sexto semestre*/
insert into materias values(0, 10, "Taller de Investigacion I", 4, "Sexto" ),
(0, 10, "Taller de Investigacion I", 5, "Sexto" ),
(0, 10, "Proceso de Separacion II", 5, "Sexto" ),
(0, 10, "Laboratorio Integral I", 6, "Sexto" ),
(0, 10, "Reactores Quimicos", 5, "Sexto" ),
(0, 10, "Salud y Seguridad en el Trabajo", 5, "Sexto" );

/*septimo semestre*/
insert into materias values(0, 10, "Taller de Administracion Gerencial", 3, "Septimo" ),
(0, 10, "Taller de Investigacion II", 4, "Septimo" ),
(0, 10, "Procesos de Separacion III", 5, "Septimo" ),
(0, 10, "Ingenieria de Proyectos", 6, "Septimo" ),
(0, 10, "Laboratorio Integral II", 6, "Septimo" ),
(0, 10, "Tratamiento de Aguas Residuales", 5, "Septimo" ),
(0, 10, "Control de Contaminantes Atmosfericos", 5, "Septimo" );

/*octavo semestre*/
insert into materias values(0, 10, "Laboratorio Integral III", 6, "Octavo" ),
(0, 10, "Instrumentacion y Control", 5, "Octavo" ),
(0, 10, "Sintesis y Optimizacion de Procesos", 5, "Octavo" ),
(0, 10, "Simulacion de Procesos", 5, "Octavo" ),
(0, 10, "Gestion y Normatividad Ambiental", 5, "Octavo" ),
(0, 10, "Disposicion de Residuos Solidos y Peligrosos", 5, "Octavo" ),
(0, 10, "Fuentes de Energia Renovable", 5, "Octavo" );

/*noveno semestre*/
insert into materias values(0, 10, "RESIDENCIA PROFESIONAL", 10, "Noveno" );

/*Insercion de materias, Lic. en Turismo*/
/*primer semestre*/
insert into materias values(0, 11, "Fundamentos del Turismo", 4, "Primero" ),
(0, 11, "Administracion de Empresas Turistica", 4, "Primero" ),
(0, 11, "Flora", 5, "Primero" ),
(0, 11, "Matematicas Aplicadas al Turismo", 5, "Primero" ),
(0, 11, "Fundamentos de Investigacion", 4, "Primero" ),
(0, 11, "Taller de Etica", 4, "Primero" );

/*segundo semestre*/
insert into materias values(0, 11, "Historia del Arte Mexicano", 5, "Segundo" ),
(0, 11, "Contabilidad Financiera", 5, "Segundo" ),
(0, 11, "Cartografia", 5, "Segundo" ),
(0, 11, "Fundamentos de Derecho", 4, "Segundo" ),
(0, 11, "Fauna", 4, "Segundo" ),
(0, 11, "Seguridad y Supervivencia", 4, "Segundo" );

/*tercero semestre*/
insert into materias values(0, 11, "Socioantropologia Turistica", 5, "Tercero" ),
(0, 11, "Estadistica Aplicada del Turismo", 4, "Tercero" ),
(0, 11, "Ecologia", 5, "Tercero" ),
(0, 11, "Meteorologia y Climatologia", 4, "Tercero" ),
(0, 11, "Herramientas Informaticas Administrativas", 5, "Tercero" ),
(0, 11, "Turismo de Aventura I", 6, "Tercero" );

/*cuarto semestre*/
insert into materias values(0, 11, "Patrimonio Turistico Cultural", 4, "Cuarto" ),
(0, 11, "Fundamentos de Mercadotecnia Turistica", 5, "Cuarto" ),
(0, 11, "Geomorfologia", 5, "Cuarto" ),
(0, 11, "Turismo de Aventura II", 5, "Cuarto" ),
(0, 11, "Comunicacion y Relaciones Humanas", 5, "Cuarto" ),
(0, 11, "Manejo de Recursos Naturales e Impacto Ambiental", 5, "Cuarto" );

/*quinto semestre*/
insert into materias values(0, 11, "Desarrollo Sustentable", 5, "Quinto" ),
(0, 11, "Geografia Turistica de Mexico", 5, "Quinto" ),
(0, 11, "Ecoturismo I", 6, "Quinto" ),
(0, 11, "Economia", 5, "Quinto" ),
(0, 11, "Turismo Rural I", 4, "Quinto" ),
(0, 11, "Diagnostico y Evaluacion del Sistema Turistico", 4, "Quinto" );

/*sexto semestre*/
insert into materias values(0, 11, "Turismo Rural II", 6, "Sexto" ),
(0, 11, "Taller de Investigacion I", 4, "Sexto" ),
(0, 11, "Ecoturismo II", 6, "Sexto" ),
(0, 11, "Cosmovision de los Pueblos Originarios", 4, "Sexto" ),
(0, 11, "Marco Legal del Turismo y Proteccion del Medio Ambiente", 5, "Sexto" ),
(0, 11, "Gestion del Desarrollo Turistico", 6, "Sexto" );

/*septimo semestre*/
insert into materias values(0, 11, "Taller de Investigacion II", 4, "Septimo" ),
(0, 11, "Elaboracion y Evaluacion de Proyectos Turisticos", 6, "Septimo" ),
(0, 11, "Mercadotecnia de Servicios Turistico", 5, "Septimo" );

/*octavo semestre*/
insert into materias values(0, 11, "Calidad del Servicio al Cliente", 5, "Octavo" ),
(0, 11, "Operacion de Servicios Tuistico", 5, "Octavo" );

/*noveno semestre*/
insert into materias values(0, 11, "RESIDENCIA PROFESIONAL", 10, "Noveno" ),
(0, 11, "Especialidad", 35, "Noveno" );

12.GRUPO: IJ-0101:Ing. en Logística
/*Insercion de materias, Ing. en Logistica*/
/*primer semestre*/
insert into materias values(0, 12, "Introduccion a la Ingenieria en Logistica", 4, "Primero" ),
(0, 12, "Calculo Diferencial", 5, "Primero" ),
(0, 12, "Quimica", 4, "Primero" ),
(0, 12, "Fundamentos de Administracion", 4, "Primero" ),
(0, 12, "Dibujo Asistido por Computadora", 4, "Primero" ),
(0, 12, "Economia", 4, "Primero" );

/*segundo semestre*/
insert into materias values(0, 12, "Taller de Etica", 4, "Segundo" ),
(0, 12, "Calculo Integral", 5, "Segundo" ),
(0, 12, "Probabilidad y Estadistica", 4, "Segundo" ),
(0, 12, "Desarrollo Humano y Organizacional", 4, "Segundo" ),
(0, 12, "Fundamentos de Investigacion", 4, "Segundo" ),
(0, 12, "Contabilidad y Costos", 5, "Segundo" );

/*tercer semestre*/
insert into materias values(0, 12, "Cadenas de Suministros", 4, "Tercero" ),
(0, 12, "Algebra Lineal", 5, "Tercero" ),
(0, 12, "Estadistica Inferencial I", 5, "Tercero" ),
(0, 12, "Fundamentos de Derecho", 4, "Tercero" ),
(0, 12, "Mecanica Clasica", 5, "Tercero" ),
(0, 12, "Finanzas", 5, "Tercero" );

/*cuarto semestre*/
insert into materias values(0, 12, "Compras", 4, "Cuarto" ),
(0, 12, "Tipologia de Producto", 4, "Cuarto" ),
(0, 12, "Estadistica Inferencial II", 5, "Cuarto" ),
(0, 12, "Entorno Economico", 4, "Cuarto" ),
(0, 12, "Topicos de Ingenieria Mecanica", 5, "Cuarto" ),
(0, 12, "Base de Datos", 4, "Cuarto" );

/*quinto semestre*/
insert into materias values(0, 12, "Almacenes", 5, "Quinto" ),
(0, 12, "Inventarios", 4, "Quinto" ),
(0, 12, "Investigacion de Operaciones", 4, "Quinto" ),
(0, 12, "Higiene y Seguridad", 6, "Quinto" ),
(0, 12, "Procesos de Fabricacion y Manejo de Materiales", 4, "Quinto" ),
(0, 12, "Mercadotecnia", 5, "Quinto" );

/*sexto semestre*/
insert into materias values(0, 12, "Trafico y Transporte", 5, "Sexto" ),
(0, 12, "Cultura de Calidad", 4, "Sexto" ),
(0, 12, "Investigacion de Operaciones II", 4, "Sexto" ),
(0, 12, "Desarrollo Sustentable", 5, "Sexto" ),
(0, 12, "Taller de Investigacion I", 4, "Sexto" ),
(0, 12, "Empaquete, Envase y Embalaje", 4, "Sexto" );

/*septimo semestre*/
insert into materias values(0, 12, "Servicio al Cliente", 4, "Septimo" ),
(0, 12, "Programacion de Procesos Productivos", 4, "Septimo" ),
(0, 12, "Modelo de Simulacion y Logistica", 4, "Septimo" ),
(0, 12, "Legislacion Aduanera", 5, "Septimo" ),
(0, 12, "Taller de Investigacion II", 4, "Septimo" ),
(0, 12, "Ingenieria Economica", 4, "Septimo" );

/*octavo semestre*/
insert into materias values(0, 12, "Innovacion", 5, "Octavo" ),
(0, 12, "Comercio Internacional", 4, "Octavo" ),
(0, 12, "Formulacion y Evaluacion de Proyectos", 5, "Octavo" ),
(0, 12, "Geografia para el Transporte", 5, "Octavo" );

/*noveno semestre*/
insert into materias values(0, 12, "RESIDENCIA PROFESIONAL", 10, "Noveno" ),
(0, 12, "ESPECIALIDAD", 28, "Noveno" ),
(0, 12, "Gestion de Proyectos", 4, "Noveno" );