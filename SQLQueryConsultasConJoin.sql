USE SistemaAlmacen



CREATE TABLE Equipo
(
IdEquipo INT PRIMARY KEY IDENTITY(1, 1),
IdMarca INT NOT NULL,
IdModelo INT NOT NULL,
NoSerie VARCHAR(100) NOT NULL,
Existencia INT, 
Proveedor VARCHAR(120),
IdAlmacen INT NOT NULL
)


-- Tabla para la MARCA
CREATE TABLE Marca
(
IdMarca INT PRIMARY KEY IDENTITY(1,1),
Descripcion VARCHAR(30) NOT NULL,
Clave VARCHAR(10),
)


-- Tabla para el MODELO
CREATE TABLE Modelo
(
IdModelo INT PRIMARY KEY IDENTITY(1,1),
Descripcion VARCHAR(30),
Clave VARCHAR(10),
)

-- Tabla para el ALMACEN
CREATE TABLE Almacen
(
IdAlmacen INT PRIMARY KEY IDENTITY(1,1),
Descripcion VARCHAR(30) NOT NULL,
Clave VARCHAR(10),
)

SELECT * FROM Equipo
SELECT * FROM Marca
SELECT * FROM Modelo
SELECT * FROM Almacen

--Insertamos EQUIPO
INSERT INTO Equipo VALUES (1, 1, 'm-4003201', 2, 'CompudWork', 1)
INSERT INTO Equipo VALUES (2, 3, 'q-4001092', 2, 'CompuCAD', 1)

--Insertamos MARCAS
INSERT INTO Marca VALUES ('DELL', 'DELL')
INSERT INTO Marca VALUES ('HP', 'HP')
INSERT INTO Marca VALUES ('HP', 'HP')

--Insertamos MODELOS
INSERT INTO Modelo VALUES ('Alienware', 'ALWAR')
INSERT INTO Modelo VALUES ('Pavilion', 'PV')
INSERT INTO Modelo VALUES ('MACPro', 'MCP')

--Insertamos ALMACEN
INSERT INTO Almacen VALUES ('Guadalajara', 'GDL')
INSERT INTO Almacen VALUES ('Ciudad de MExico', 'CDM')


-- CONSULTA
SELECT
EQ.IdEquipo,
MC.Descripcion,
MO.Descripcion,
NoSerie,
EQ.NoSerie,
EQ.Existencia,
EQ.Proveedor,
AL.Descripcion
FROM
Equipo EQ
JOIN Marca MC ON EQ.IdMarca = MC.IdMarca
JOIN Modelo MO ON EQ.IdModelo = MO.IdModelo
JOIN Almacen AL ON EQ.IdAlmacen = AL.IdAlmacen
WHERE EQ.IdEquipo = 2
-------------------------------------------------

--TRUNCATE TABLE Almacen
--TRUNCATE TABLE Marca
--TRUNCATE TABLE Equipo
--TRUNCATE TABLE Modelo