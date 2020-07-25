CREATE DATABASE desafio2;


CREATE TABLE pais(
idPais SERIAL PRIMARY KEY,
NombrePais VARCHAR);


CREATE TABLE comuna(
idComuna SERIAL PRIMARY KEY,
NombreComuna VARCHAR);


CREATE TABLE departamento(
idDpto SERIAL PRIMARY KEY,
NombreDpto VARCHAR);

CREATE TABLE liquidacion(
idTrabajador SERIAL PRIMARY KEY,
Ubic_Liquidacion VARCHAR,
FOREIGN KEY (IdTrabajador) REFERENCES trabajadores(idTrabajador));



CREATE TABLE trabajadores(
idTrabajador SERIAL PRIMARY KEY,
RUT VARCHAR,
Nombre VARCHAR,
IdDpto INT,
Direccion VARCHAR,
IdComuna INT,
IdPais INT,
FOREIGN KEY (IdDpto) REFERENCES departamento(IdDpto),
FOREIGN KEY (IdComuna) REFERENCES comuna(IdComuna),
FOREIGN KEY (IdPais) REFERENCES pais(IdPais));

