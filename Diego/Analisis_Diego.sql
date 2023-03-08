-- -------------------------------------------------------------------------------------------
--             Proyecto:    DESAFIO 01 - DMD941
--          Ejercicio 1:    SPA DIEGO (40%)
--                          El Spa, "Diego", necesita segmentar sus clientes, para
--                          realizar una campaña de fidelización, y le pide a usted que
--                          efectué un análisis de sus tres sucursales, que defina
--                          cuantos grupos y que características tienen.
--               Materia:   DATAWAREHOUSE Y MINERÍA DE DATOS
--               Archivo:   Analisis_Diego.sql
--           Descripción:   Ingreso de datos ejemplo para base de datos
--               Alumnos:   Driotis Cruz, David Otoniel.............DC211280
--                          Flores Quintanilla, Roberto Carlos......FQ211776
--         Código fuente:   https://github.com/DMD941/Desafio_01
-- -------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------
-- Si la tabla ya existe procedemos a cerrarla de forma correcta

--Remove backup history
EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'EJERCICIO1'
GO
USE [master]
GO
--Cerramos todas las conexiones a la base de datos
ALTER DATABASE [EJERCICIO1] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
USE [master]
GO
--removemos la base de datos, si esta existe previamente
DROP DATABASE IF EXISTS [EJERCICIO1]
GO


--Creamos la base de datos EJERCICIO1
USE master;
CREATE DATABASE [EJERCICIO1]
GO
--Removemos la tabla SPA, si existiera previamente
DROP TABLE IF EXISTS [EJERCICIO1].[dbo].[SPA]
GO
--Creamos la tabla SPA
CREATE TABLE [EJERCICIO1].[dbo].[SPA] (
    [id] varchar(50),
    [Sexo] INT,
    [ingresos] DECIMAL,
    [PromVisit] DECIMAL,
    [Edad] INT,
    [Sauna] INT,
    [Masaje] INT,
    [Hidro] INT,
    [Yoga] INT
)
GO
--Verificamos que la tabla fue creada al mostrar los primeros 1000 registros
SELECT TOP (1000) [id]
      ,[Sexo]
      ,[ingresos]
      ,[PromVisit]
      ,[Edad]
      ,[Sauna]
      ,[Masaje]
      ,[Hidro]
      ,[Yoga]
  FROM [EJERCICIO1].[dbo].[SPA]


-- -------------------------------------------------------------------------------------------
-- PROMEDIO DE INGRESOS SEGUN EL SEXO DEL CLIENTE

SELECT avg(ingresos) as Promedio
    FROM[EJERCICIO1].[dbo].[SPA]
    where Sexo = 0

SELECT avg(ingresos) as Promedio
    FROM[EJERCICIO1].[dbo].[SPA]
    where Sexo = 1


-- PROMEDIO DE VISITAS SEGUN EL SEXO DEL CLIENTE

SELECT avg(PromVisit) as Promedio_De_Visitas
    FROM[EJERCICIO1].[dbo].[SPA]
    where Sexo = 0

SELECT avg(PromVisit) as Promedio_De_Visitas
    FROM[EJERCICIO1].[dbo].[SPA]
    where Sexo = 1


-- La suma de cada servicio del SPA
SELECT  sum(Sauna) as Sauna ,
        sum(Masaje) as Masaje ,
        sum(Hidro) as Hidro ,
        sum(Yoga) as Yoga
    FROM[EJERCICIO1].[dbo].[SPA]


-- Promedio de las edades de los clientes segun su genero
SELECT avg(Edad) as Edad
        FROM[EJERCICIO1].[dbo].[SPA]
        WHERE Sexo = 0

SELECT avg(Edad) as Edad
        FROM[EJERCICIO1].[dbo].[SPA]
        WHERE Sexo = 1


