create database Ejercicio1_clase3;

-------------------------------------------------
------- TABLAS, CAMPOS, TIPO DE DATO ------------
-------------------------------------------------

--Crear una tabla Clientes con los siguientes campos:
--Id (Entero )
--Nombre (Cadena de Texto hasta 50 caracteres)
--Nombre2 (Cadena de Texto hasta 50 caracteres)
--Apellido (Cadena de Texto hasta 50 caracteres)
--FechaCreacion (fecha/hora)
--Sexo (Cadena de texto de 1 carácter)

create table Clientes (
	id int not null,
	nombre char(50),
	apellido char(50),
	fechaCreacion datetime,
	sexo CHAR(1)

)
/*
2. Consultar información de la base de datos
Ejecutar los procedimientos almacenados:

SP_Tables ? Para obtener información de las tablas de la base de datos.
SP_Columns ? Para obtener información sobre las columnas de la tabla Clientes.
*/

SP_Tables;

SP_Columns "Clientes";

--3. NULL/NOT NULL: Crear una tabla Clientes con los siguientes campos:

--Id ?? Entero y Obligatorio
--Nombre ?? Cadena de Texto hasta 50 caracteres y Obligatorio
--Nombre2 ?? Cadena de Texto hasta 50 caracteres y Opcional
--Apellido ?? Cadena de Texto hasta 50 caracteres y Obligatorio
--Insertar datos de prueba y chequear el funcionamiento

create table clientes2(
Id int not null,
mombre char(50) not null,
mombre2 char(50) null,
apellido char(50) not Null,
)

--prueba
INSERT INTO clientes2(Id,mombre,mombre2,apellido)
VALUES (1,'Johan',NULL,'Cruyff')

INSERT INTO clientes2(Id,mombre,mombre2,apellido)
VALUES (1,'Diego','Armando','Maradora')

select * from clientes2;