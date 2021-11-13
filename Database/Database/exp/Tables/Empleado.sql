﻿CREATE TABLE [exp].[Empleado]
(
	IdEmpleado INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED(IdEmpleado)
  , Nombre VARCHAR(50) NOT NULL 
  , PrimerApellido VARCHAR(50) NOT NULL
  , SegundoApellido VARCHAR(50) NOT NULL
  , Edad INT NOT NULL
  , FechaNacimiento DATETIME NOT NULL
  , TipoIdentificacion VARCHAR (50) NOT NULL
  , Identificacion VARCHAR (250) NOT NULL
)
WITH (DATA_COMPRESSION = PAGE)
GO
