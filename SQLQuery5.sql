create database escuela2

use escuela2

create table carrera2(

Clave_c int identity,

nom_c varchar(50) not null,

durac_c float not null,

constraint pk_cc primary key (clave_c))
insert into carrera2 values('Medicina',5)
select * from carrera2
insert into carrera2 values('Sistemas',5)
insert into carrera2 values('Aviación',7)

create table materia2(

clave_m int,

nom_m varchar(50) unique,

cred_m float null,

constraint pk_cm primary key (clave_m))

insert into materia2 values(001,'Cálculo 1',4)
select * from materia2
insert into materia2 values(002,'Biología 1',3)

create table profesor2(

clave_p int identity,

nom_p varchar(150) unique, dir_p varchar(200) null,

tel_p bigint not null, hor_p datetime not null,

constraint pk_cp primary key (Clave_p))

insert into profesor2 values('Juan Muñoz',null,4970677,13)
select * from profesor2
insert into profesor2 values('Esteban Zapata','cra 33 #70 sur',4970677,13)

-------Tabla alumno con clave foranea

create table alumno2(

mat_alu int not null,

nom_alu varchar(150) unique,

edad_alu int null,

sem_alu int null,

gen_alu varchar(10) null,

clave_c1 int,

constraint pk_calu primary key (mat_alu), constraint fk_fc1 foreign key (clave_c1) references carrera2(clave_c))

insert into alumno2 values(1,'Santiago Pérez',15,null,null,1)
select * from alumno2
insert into alumno2 values(2,'Francisco Sosa',14,null,'Masculino',2)

------tablas intermedias alumno-profesor

create table alu_pro2(

mat_alu1 int,

clave_p1 int,

constraint fk_falu1 foreign key(mat_alu1) references alumno2 (mat_alu),

constraint fk_fp1 foreign key (clave_p1) references profesor2 (clave_p))

insert into alu_pro2 values(001,1)
select * from alu_pro2

-------tabla intermedia materia-alumno

create table mat_alu2(

clave_m1 int,

mat_alu2 int,

constraint fk_fm1 foreign key (clave_m1) references materia2 (clave_m),

constraint fk_falu2 foreign key (mat_alu2) references alumno2(mat_alu) )

insert into alu_pro2 values(001,1)
select * from mat_alu2
insert into alu_pro2 values(002,2)

------------tabla intermedia materia profesor

create table mat_pro2(

clave_m2 int,

clave_p2 int,

constraint fk_fm2 foreign key (clave_m2) references materia2(clave_m),

constraint fk_fp2 foreign key (clave_p2) references profesor2 (clave_p))

insert into mat_pro2 values(001,1)
select * from mat_pro2
insert into mat_pro2 values(002,2)