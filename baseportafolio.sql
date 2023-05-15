DROP DATABASE portafolio;
CREATE DATABASE portafolio;
USE portafolio;

CREATE TABLE usuario (
idusuario int not null auto_increment primary key, 
username varchar(30) not null,
nombre varchar(30) not null, 
apellido varchar(30) not null, 
fechanacimiento date not null, 
clave varchar(15) not null,
run VARCHAR(10) not null unique
);

CREATE TABLE cliente (
idcliente INT not null auto_increment PRIMARY KEY,
telefono numeric (20) NOT NULL,
email VARCHAR(25) NOT NULL,
rutcliente VARCHAR(10) not null
);

CREATE TABLE administrativo (
idadministrativo int not null auto_increment primary key, 
area varchar(20) not null,
rutadmin varchar(10) not null
);

CREATE TABLE contacto (
nombre int not null,
email varchar(30) not null,
mensaje varchar(30) not null
);

alter table administrativo add 
constraint fk_rutadmin 
foreign key(rutadmin) references usuario(run);

alter table cliente add 
constraint fk_rutcliente 
foreign key(rutcliente) references usuario(run);

INSERT INTO usuario values (1, 'Benjaimico', 'benjamin', 'palacios', '1997-01-09',  '619', '1900000-1');
INSERT INTO usuario values (2,'Invitado','invitado','inv','1990-12-10','000','10000000-1');
INSERT INTO usuario values (3,'Cliente','cli','ente','1998-11-09','000','12345678-9');
INSERT INTO administrativo values (1, 'gerencia', '1900000-1');
INSERT INTO cliente values (2,'90807980','example@gmail.com','10000000-1');
INSERT INTO cliente values (3,'70806080','cliente@cli.cl','12345678-9');


