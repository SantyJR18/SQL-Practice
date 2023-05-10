create database BDMonitores
go 

use BDMonitores
go

-- Crear tabla Estudiantes
CREATE TABLE Estudiantes (
    ID_estudiante int PRIMARY KEY,
    IDUCA nvarchar(9) not null unique,
    Nombre nvarchar (50),
    Apellido nvarchar (50),
    FechaNac datetime,
    Correo_electronico nvarchar(100),
    Telefono nvarchar(20),
    Carrera nvarchar(50),
    Activo bit default 'true'
);

-- Crear tabla Clases
CREATE TABLE Clases (
    ID_clase int PRIMARY KEY,
    Codigo_clase nvarchar(20) unique not null,
    Nombre_clase nvarchar(50) not null,
    Horario nvarchar(50)
);

ALTER TABLE Clases
ADD Activo bit default 'true';

-- Crear tabla Monitores
CREATE TABLE Monitores (
    ID_monitor int PRIMARY KEY,
    ID_estudiante int,
    ID_clase int,
    Anio_en_curso int,
    Semestre_en_curso nvarchar(20),
    FOREIGN KEY (ID_estudiante) REFERENCES Estudiantes(ID_estudiante),
    FOREIGN KEY (ID_clase) REFERENCES Clases(ID_clase)
);


--Registros tabla Estudiantes

SELECT * FROM dbo.Estudiantes;

SELECT ID_estudiante, Nombre, Apellido FROM Estudiantes;

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (1, '123456789', 'Juan', 'Pérez', '01/01/2001', 'juan.perez@email.com', '555-1234', 'Ingeniería en Sistemas', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (2, '234567890', 'Ana', 'González', '02/02/2002', 'ana.gonzalez@email.com', '555-5678', 'Medicina', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (3, '345678901', 'Pedro', 'Rodríguez', '03/03/2003', 'pedro.rodriguez@email.com', '555-9012', 'Derecho', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (4, '456789012', 'María', 'Sánchez', '04/04/2004', 'maria.sanchez@email.com', '555-3456', 'Ingeniería en Sistemas', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (5, '567890123', 'José', 'García', '05/05/2005', 'jose.garcia@email.com', '555-7890', 'Medicina', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (6, '678901234', 'Laura', 'Martínez', '06/06/2006', 'laura.martinez@email.com', '555-1234', 'Derecho', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (7, '789012345', 'Carlos', 'Gómez', '07/07/2007', 'carlos.gomez@email.com', '555-5678', 'Ingeniería Industrial', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (8, '890123456', 'Isabel', 'Pérez', '08/08/2008', 'isabel.perez@email.com', '555-9012', 'Medicina', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (9, 'A20195051', 'Mario', 'Sánchez', '12/02/1999', 'mario.sanchez@gmail.com', '333-555-7777', 'Ingeniería Civil');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (10, 'A20195052', 'Carla', 'Vega', '17/05/2000', 'carla.vega@yahoo.com', '222-444-6666', 'Psicología');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (11, 'A20195053', 'Lucas', 'García', '21/09/1999', 'lucas.garcia@hotmail.com', '555-777-9999', 'Administración de Empresas');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (12, 'A20195054', 'Ana', 'López', '25/01/1999', 'ana.lopez@gmail.com', '444-666-8888', 'Ingeniería en Sistemas');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (13, 'A20195055', 'Pedro', 'Jiménez', '10/06/2000', 'pedro.jimenez@yahoo.com', '333-555-7777', 'Medicina');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (14, 'A20195056', 'Julia', 'Pérez', '15/03/2002', 'julia.perez@hotmail.com', '111-222-3333', 'Arquitectura');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (15, 'A20195057', 'Juan', 'Martínez', '02/12/1999', 'juan.martinez@gmail.com', '666-888-0000', 'Contaduría Pública');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (16, '20175896', 'Juan', 'Araica', '23/07/1999', 'juanaraica@example.com', '555-1234', 'Ingeniería Civil');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (17, '20173981', 'María', 'González', '12/11/2003', 'mariagonzalez@example.com', '555-4321', 'Licenciatura en Psicología');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (18, '20162100', 'Pedro', 'López', '06/05/2000', 'pedrolopez@example.com', '555-1111', 'Ingeniería en Sistemas');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (19, '20150012', 'Ana', 'Martínez', '18-09-1997', 'anamartinez@example.com', '555-7777', 'Ingeniería Industrial');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (20, '20181234', 'Lucas', 'Rodríguez', '28/02/2001', 'lucasrodriguez@example.com', '555-8888', 'Licenciatura en Derecho');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (21, '20171234', 'Carmen', 'Hernández', '29/05/2005', 'carmenhernandez@example.com', '555-9999', 'Ingeniería Mecánica');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (22, '20161234', 'Sofía', 'Sánchez', '15/08/1999', 'sofiasanchez@example.com', '555-2222', 'Licenciatura en Educación');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES (23, '20171235', 'Diego', 'García', '07/10/2004', 'diegogarcia@example.com', '555-3333', 'Ingeniería en Computación');

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (24, 'E23456789', 'Alice', 'Smith', '01/01/1998', 'alice.smith@example.com', '555-1234', 'Biología', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (25, 'E34567890', 'Bob', 'Johnson', '10/10/2004', 'bob.johnson@example.com', '555-2345', 'Matemáticas', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (26, 'E45678901', 'Charlie', 'Brown', '23/06/2004', 'charlie.brown@example.com', '555-3456', 'Física', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (27, 'E56789012', 'Diana', 'Garcia', '06/08/2003', 'diana.garcia@example.com', '555-4567', 'Química', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (28, 'E67890123', 'Ethan', 'Davis', '29/06/2006', 'ethan.davis@example.com', '555-5678', 'Ingeniería Eléctrica', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (29, 'E78901234', 'Fiona', 'Lee', '03/01/1999', 'fiona.lee@example.com', '555-6789', 'Psicología', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (30, 'E89012345', 'George', 'Taylor', '18/02/2002', 'george.taylor@example.com', '555-7890', 'Historia', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo) 
VALUES (31, 'E90123456', 'Hannah', 'Anderson', '24/05/2003', 'hannah.anderson@example.com', '555-8901', 'Ingeniería Mecánica', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (32, 'Z00000001', 'Ana', 'García', '12/04/1999', 'ana.garcia@example.com', '1234567890', 'Ingeniería Civil', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (33, 'Z00000002', 'Juan', 'Martínez', '05/05/2006', 'juan.martinez@example.com', '2345678901', 'Administración de Empresas', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (34, 'Z00000003', 'María', 'González', '10/08/2001', 'maria.gonzalez@example.com', '3456789012', 'Ingeniería en Sistemas', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (35, 'Z00000004', 'Pedro', 'López', '22/12/1998', 'pedro.lopez@example.com', '4567890123', 'Derecho', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (36, 'Z00000005', 'Marta', 'Ramírez', '17/11/2000', 'marta.ramirez@example.com', '5678901234', 'Medicina', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (37, 'Z00000006', 'Daniel', 'Gutiérrez', '30/09/2003', 'daniel.gutierrez@example.com', '6789012345', 'Psicología', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (38, 'Z00000007', 'Laura', 'Sánchez', '11/10/2004', 'laura.sanchez@example.com', '7890123456', 'Ingeniería Industrial', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (39, 'Z00000008', 'Carlos', 'Gómez', '28/07/2002', 'carlos.gomez@example.com', '8901234567', 'Arquitectura', 1);

INSERT INTO Estudiantes (ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES (40, 'Z00000009', 'Sofía', 'Torres', '28/05/2004', 'sofia.torres@example.com', '9012345678', 'Ingeniería en Ambiental', 1);

-- Registros tabla Clases

SELECT * FROM Clases

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (1, 'CSC101', 'Introducción a la programación', 'Lunes 9-11 am');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (2, 'MAT201', 'Cálculo I', 'Martes 2-4 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (3, 'PHY301', 'Mecánica cuántica', 'Miércoles 10-12 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (4, 'BIO401', 'Genética molecular', 'Jueves 1-3 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (5, 'HIS501', 'Historia del arte', 'Viernes 4-6 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (6, 'ENG601', 'Literatura inglesa', 'Lunes 2-4 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (7, 'MUS701', 'Teoría musical', 'Miércoles 6-8 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (8, 'ECO801', 'Microeconomía', 'Martes 10-12 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (9, 'PSY901', 'Psicología social', 'Jueves 3-5 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (10, 'SOC1001', 'Introducción a la sociología', 'Viernes 10-12 pm');

-- Registros tablas Monitores

SELECT * FROM Monitores

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (1, 40, 4, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (2, 37, 9, 3, 'Segundo Semestre') 

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (3, 4, 1, 4, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (4, 15, 8, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (5, 21, 2, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (6, 31, 3, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (7, 38, 2, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (8, 30, 5, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (9, 27, 4, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (10, 23, 1, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (11, 22, 7, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (12, 39, 10, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (13, 13, 10, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (14, 34, 1, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (15, 16, 2, 3, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (16, 2, 10, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (17, 11, 8, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (18, 3, 6, 3, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (19, 12, 1, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (20, 28, 2, 1, 'Segundo Semestre')

--  Mostrar nombre completo de los monitores, la clase que van a impartir y su correo electrónico

SELECT Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS NombreCompleto, 
       Clases.Nombre_clase AS ClaseImpartida, 
       Estudiantes.Correo_electronico AS CorreoElectronico
FROM Monitores 
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante 
INNER JOIN Clases ON Monitores.ID_clase = Clases.ID_clase;

-- Mostrar los monitores de la carrera de Ingeniería en sistema de información

SELECT Monitores.ID_monitor, Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS NombreCompleto, Clases.Nombre_clase, Estudiantes.Correo_electronico
FROM Monitores, Estudiantes, Clases
WHERE Monitores.ID_estudiante = Estudiantes.ID_estudiante
  AND Monitores.ID_clase = Clases.ID_clase
  AND Estudiantes.Carrera = 'Ingeniería en Sistemas';


--  Mostrar los monitores que cumplen años en el mes de mayo

SELECT Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS 'Nombre Completo',
       Clases.Nombre_clase AS 'Clase a Impartir',
       Estudiantes.Correo_electronico AS 'Correo Electrónico'
FROM Estudiantes, Clases, Monitores
WHERE Estudiantes.ID_estudiante = Monitores.ID_estudiante
  AND Clases.ID_clase = Monitores.ID_clase
  AND MONTH(Estudiantes.FechaNac) = 5;   

-- Mostrar los monitores que cumplen años durante la semana del 8 al 13 de mayo

SELECT Monitores.ID_monitor, Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS NombreCompleto, Clases.Nombre_clase, Estudiantes.Correo_electronico 
FROM Monitores, Estudiantes, Clases 
WHERE Monitores.ID_estudiante = Estudiantes.ID_estudiante 
  AND Monitores.ID_clase = Clases.ID_clase 
  AND MONTH(Estudiantes.FechaNac) = 5 
  AND DAY(Estudiantes.FechaNac) BETWEEN 8 AND 13 
 
-- Mostrar los monitores que posean en su nombre la letra u

SELECT Estudiantes.Nombre, Estudiantes.Apellido
FROM Estudiantes, Monitores
WHERE Estudiantes.ID_estudiante = Monitores.ID_estudiante
AND (Estudiantes.Nombre LIKE '%U%' OR Estudiantes.Apellido LIKE '%U%')

-- Mostrar los monitores por una clase específica

SELECT Monitores.ID_monitor, Estudiantes.Nombre, Clases.Nombre_clase
FROM Monitores
JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
JOIN Clases ON Monitores.ID_clase = Clases.ID_clase
WHERE Clases.Codigo_clase = 'CSC101'; --Aquí podemos cambiar código según la clase

-- Contar monitores mayores de edad

SELECT COUNT(*) AS Monitores_Mayores
FROM Monitores
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE DATEDIFF(YEAR, Estudiantes.FechaNac, GETDATE()) >= 18

-- Contar monitores menores de edad

SELECT COUNT(*) AS Monitores_Menores
FROM Monitores
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE DATEDIFF(YEAR, Estudiantes.FechaNac, GETDATE()) < 18

-- Mostrar Horarios 

SELECT Clases.Horario, Estudiantes.Nombre, Estudiantes.Apellido
FROM Monitores 
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante 
INNER JOIN Clases ON Monitores.ID_clase = Clases.ID_clase;

-- Editar 5 registros tabla Monitores

UPDATE Monitores
SET Anio_en_curso = 3, Semestre_en_curso = 'Verano 2022'
WHERE ID_monitor IN (SELECT TOP 5 ID_monitor FROM Monitores)

--Eliminar 4 registros tabla Clases 

DELETE TOP(4) FROM Clases;

DELETE FROM Clases
WHERE ID_clase IN (1, 3, 5);

--Eliminar tablas Estudiantes y Monitores

DELETE FROM Estudiantes;
DELETE FROM Monitores; 