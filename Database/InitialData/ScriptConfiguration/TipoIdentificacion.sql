

SELECT 
TipoIdentificacion INTO #ProvinciaTemp
--IdProvincia, NombreProvincia INTO #ProvinciaTemp--

FROM (
VALUES
(1, 'CEDULA'),
(2, 'PASSAPORTE'),
(3, 'CEDULA JURIDICA'),
(4, 'DIMEX')

)AS TEMP (TipoIdentificacion)


----ACTUALIZAR DATOS---
UPDATE P SET
  P.TipoIdentificacion= TM.TipoIdentificacion
FROM Dbo.Empleado P
INNER JOIN #EmpleadoTemp TM
    ON P.TipoIdentificacion= TM.TipoIdentificacion


----INSERTAR DATOS---

SET IDENTITY_INSERT exp.Empleado ON

INSERT INTO exp.Empleado(
TipoIdentificacion)
SELECT
TipoIdentificacion
FROM #EmpleadoTemp


EXCEPT
SELECT
TipoIdentificacion
FROM exp.Empleado


SET IDENTITY_INSERT exp.Empleado OFF

GO