﻿CREATE PROCEDURE [exp].[EmpleadoObtener]
      @IdEmpleado int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     E.IdEmpleado,
     E.Nombre,
     E.PrimerApellido,
     E.SegundoApellido,
     E.Edad,
     E.FechaNacimiento,
     E.TipoIdentificacion,
     E.Identificacion
    FROM exp.Empleado E
    WHERE
    (@IdEmpleado IS NULL OR IdEmpleado=@IdEmpleado)

END