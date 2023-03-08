-- ----------------------------------------------------------------------
--     Proyecto:    DESAFIO 01 - DMD941
--  Ejercicio 2:    FLORISTERIA FIORELLA (40%)
--                  La Floristería "Fiorella" quiere saber cómo se
--                  compran sus productos, y tiene la data de tres
--                  departamentos del país, por lo cual les pide su
--                  opinión sobre qué productos sobresalen, que
--                  combinaciones son mejores y quieren este estudio
--                  por departamento y también por país.
--       Materia:   DATAWAREHOUSE Y MINERÍA DE DATOS
--       Archivo:   Analisis_Fiorella.sql
--   Descripción:   Ingreso de datos ejemplo para base de datos
--       Alumnos:   Driotis Cruz, David Otoniel.............DC211280
--                          Flores Quintanilla, Roberto Carlos......FQ211776
-- Código fuente:   https://github.com/DMD941/Desafio_01
-- ----------------------------------------------------------------------


-- -------------------------------------------------------------------------------------------
-- Si la tabla ya existe procedemos a cerrarla de forma correcta

--Remove backup history
EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'EJERCICIO2'
GO
USE [master]
GO
--Cerramos todas las conexiones a la base de datos
ALTER DATABASE [EJERCICIO1] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
USE [master]
GO
--removemos la base de datos, si esta existe previamente
DROP DATABASE IF EXISTS [EJERCICIO2]
GO
--Creamos la base de datos EJERCICIO2
USE master;
CREATE DATABASE [EJERCICIO2]
GO
-- --------------------------------------------------------------------
--Removemos la tabla Floristeria, si existiera previamente
DROP TABLE IF EXISTS [EJERCICIO2].[dbo].[Floristeria]
GO
--Creamos la tabla Floristeria
CREATE TABLE [EJERCICIO2].[dbo].[Floristeria] (
    [id] varchar(50),
    [Rosas] INT,
    [Claveles] INT,
    [Macetas] INT,
    [Tierra] INT,
    [Girasoles] INT,
    [Hortensia] INT,
    [Globos] INT,
    [Tarjetas] INT,
    [Orquideas] INT,
    [Carmesi] INT,
    [Lirios] INT,
    [Aurora] INT,
    [Tulipanes] INT,
    [Liston] INT
)
GO
--Verificamos que la tabla fue creada al mostrar los primeros 1000 registros
SELECT TOP (1000) [id]
    ,[Rosas]
    ,[Claveles]
    ,[Macetas]
    ,[Tierra]
    ,[Girasoles]
    ,[Hortensia]
    ,[Globos]
    ,[Tarjetas]
    ,[Orquideas]
    ,[Carmesi]
    ,[Lirios]
    ,[Aurora]
    ,[Tulipanes]
    ,[Liston]
  FROM [EJERCICIO2].[dbo].[Floristeria]
-- --------------------------------------------------------------------
--Removemos la tabla Floristeria_San_Miguel, si existiera previamente
DROP TABLE IF EXISTS [EJERCICIO2].[dbo].[Floristeria_San_Miguel]
GO
--Creamos la tabla Floristeria_San_Miguel
CREATE TABLE [EJERCICIO2].[dbo].[Floristeria_San_Miguel] (
    [id] varchar(50),
    [Rosas] INT,
    [Claveles] INT,
    [Macetas] INT,
    [Tierra] INT,
    [Girasoles] INT,
    [Hortensia] INT,
    [Globos] INT,
    [Tarjetas] INT,
    [Orquideas] INT,
    [Carmesi] INT,
    [Lirios] INT,
    [Aurora] INT,
    [Tulipanes] INT,
    [Liston] INT
)
GO
--Verificamos que la tabla fue creada al mostrar los primeros 1000 registros
SELECT TOP (1000) [id]
    ,[Rosas]
    ,[Claveles]
    ,[Macetas]
    ,[Tierra]
    ,[Girasoles]
    ,[Hortensia]
    ,[Globos]
    ,[Tarjetas]
    ,[Orquideas]
    ,[Carmesi]
    ,[Lirios]
    ,[Aurora]
    ,[Tulipanes]
    ,[Liston]
  FROM [EJERCICIO2].[dbo].[Floristeria_San_Miguel]
-- --------------------------------------------------------------------
--Removemos la tabla Floristeria_San_Salvador, si existiera previamente
DROP TABLE IF EXISTS [EJERCICIO2].[dbo].[Floristeria_San_Salvador]
GO
--Creamos la tabla Floristeria_San_Salvador
CREATE TABLE [EJERCICIO2].[dbo].[Floristeria_San_Salvador] (
    [id] varchar(50),
    [Rosas] INT,
    [Claveles] INT,
    [Macetas] INT,
    [Tierra] INT,
    [Girasoles] INT,
    [Hortensia] INT,
    [Globos] INT,
    [Tarjetas] INT,
    [Orquideas] INT,
    [Carmesi] INT,
    [Lirios] INT,
    [Aurora] INT,
    [Tulipanes] INT,
    [Liston] INT
)
GO
--Verificamos que la tabla fue creada al mostrar los primeros 1000 registros
SELECT TOP (1000) [id]
    ,[Rosas]
    ,[Claveles]
    ,[Macetas]
    ,[Tierra]
    ,[Girasoles]
    ,[Hortensia]
    ,[Globos]
    ,[Tarjetas]
    ,[Orquideas]
    ,[Carmesi]
    ,[Lirios]
    ,[Aurora]
    ,[Tulipanes]
    ,[Liston]
  FROM [EJERCICIO2].[dbo].[Floristeria_San_Salvador]
-- --------------------------------------------------------------------
--Removemos la tabla Floristeria_Santa_Ana, si existiera previamente
DROP TABLE IF EXISTS [EJERCICIO2].[dbo].[Floristeria_Santa_Ana]
GO
--Creamos la tabla Floristeria_Santa_Ana
CREATE TABLE [EJERCICIO2].[dbo].[Floristeria_Santa_Ana] (
    [id] varchar(50),
    [Rosas] INT,
    [Claveles] INT,
    [Macetas] INT,
    [Tierra] INT,
    [Girasoles] INT,
    [Hortensia] INT,
    [Globos] INT,
    [Tarjetas] INT,
    [Orquideas] INT,
    [Carmesi] INT,
    [Lirios] INT,
    [Aurora] INT,
    [Tulipanes] INT,
    [Liston] INT
)
GO
--Verificamos que la tabla fue creada al mostrar los primeros 1000 registros
SELECT TOP (1000) [id]
    ,[Rosas]
    ,[Claveles]
    ,[Macetas]
    ,[Tierra]
    ,[Girasoles]
    ,[Hortensia]
    ,[Globos]
    ,[Tarjetas]
    ,[Orquideas]
    ,[Carmesi]
    ,[Lirios]
    ,[Aurora]
    ,[Tulipanes]
    ,[Liston]
  FROM [EJERCICIO2].[dbo].[Floristeria_Santa_Ana]
-- --------------------------------------------------------------------
--Removemos la tabla Floristeria_Pais, si existiera previamente
DROP TABLE IF EXISTS [EJERCICIO2].[dbo].[Floristeria_Pais]
GO
--Creamos la tabla Floristeria_Pais
CREATE TABLE [EJERCICIO2].[dbo].[Floristeria_Pais] (
    [id] varchar(50),
    [Rosas] INT,
    [Claveles] INT,
    [Macetas] INT,
    [Tierra] INT,
    [Girasoles] INT,
    [Hortensia] INT,
    [Globos] INT,
    [Tarjetas] INT,
    [Orquideas] INT,
    [Carmesi] INT,
    [Lirios] INT,
    [Aurora] INT,
    [Tulipanes] INT,
    [Liston] INT
)
GO
--Verificamos que la tabla fue creada al mostrar los primeros 1000 registros
SELECT TOP (1000) [id]
    ,[Rosas]
    ,[Claveles]
    ,[Macetas]
    ,[Tierra]
    ,[Girasoles]
    ,[Hortensia]
    ,[Globos]
    ,[Tarjetas]
    ,[Orquideas]
    ,[Carmesi]
    ,[Lirios]
    ,[Aurora]
    ,[Tulipanes]
    ,[Liston]
  FROM [EJERCICIO2].[dbo].[Floristeria_Pais]



-- Script para conocer las ventas de cada producto de San Miguel
SELECT
      sum(Rosas) as Rosas
      ,sum(Claveles) as Claveles
      ,sum(Macetas) as Macetas
      ,sum(Tierra) as Tierra
      ,sum(Girasoles) as Girasoles
      ,sum(Hortensia) as Hortensia
      ,sum(Globos) as Globos
      ,sum(Tarjetas) as Tarjetas
      ,sum(Orquideas) as Orquideas
      ,sum(Carmesi) as Carmesi
      ,sum(Lirios) as Lirios
      ,sum(Aurora) as Aurora
      ,sum(Tulipanes) as Tulipanes
      ,sum(Liston) as Liston
  FROM [EJERCICIO2].[dbo].[Floristeria_San_Miguel]

-- Script para conocer las ventas de cada producto de San Miguel
SELECT
      sum(Rosas) as Rosas
      ,sum(Claveles) as Claveles
      ,sum(Macetas) as Macetas
      ,sum(Tierra) as Tierra
      ,sum(Girasoles) as Girasoles
      ,sum(Hortensia) as Hortensia
      ,sum(Globos) as Globos
      ,sum(Tarjetas) as Tarjetas
      ,sum(Orquideas) as Orquideas
      ,sum(Carmesi) as Carmesi
      ,sum(Lirios) as Lirios
      ,sum(Aurora) as Aurora
      ,sum(Tulipanes) as Tulipanes
      ,sum(Liston) as Liston
  FROM [EJERCICIO2].[dbo].[Floristeria_San_Salvador]

-- Script para conocer las ventas de cada producto de San Miguel
SELECT
      sum(Rosas) as Rosas
      ,sum(Claveles) as Claveles
      ,sum(Macetas) as Macetas
      ,sum(Tierra) as Tierra
      ,sum(Girasoles) as Girasoles
      ,sum(Hortensia) as Hortensia
      ,sum(Globos) as Globos
      ,sum(Tarjetas) as Tarjetas
      ,sum(Orquideas) as Orquideas
      ,sum(Carmesi) as Carmesi
      ,sum(Lirios) as Lirios
      ,sum(Aurora) as Aurora
      ,sum(Tulipanes) as Tulipanes
      ,sum(Liston) as Liston
  FROM [EJERCICIO2].[dbo].[Floristeria_Santa_Ana]

-- Script para conocer las ventas de cada producto a nivel pais
SELECT
      sum(Rosas) as Rosas
      ,sum(Claveles) as Claveles
      ,sum(Macetas) as Macetas
      ,sum(Tierra) as Tierra
      ,sum(Girasoles) as Girasoles
      ,sum(Hortensia) as Hortensia
      ,sum(Globos) as Globos
      ,sum(Tarjetas) as Tarjetas
      ,sum(Orquideas) as Orquideas
      ,sum(Carmesi) as Carmesi
      ,sum(Lirios) as Lirios
      ,sum(Aurora) as Aurora
      ,sum(Tulipanes) as Tulipanes
      ,sum(Liston) as Liston
  FROM [EJERCICIO2].[dbo].[Floristeria_Pais]




