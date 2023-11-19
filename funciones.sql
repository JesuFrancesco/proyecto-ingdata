CREATE OR REPLACE FUNCTION CalcIngresosTotales RETURN NUMBER IS
    total_ingresos NUMBER := 0;
BEGIN
    -- Calcular los ingresos totales por ventas
    SELECT COALESCE(SUM(Monto), 0)
    INTO total_ingresos
    FROM Transaccion
    WHERE Tipo = 'Venta';

    -- Devolver el total de ingresos por ventas
    RETURN total_ingresos;
END CalcIngresosTotales;
-- /

-- DECLARE
--     resultado NUMBER;
-- BEGIN
--     resultado := CalcIngresosTotales;
--     DBMS_OUTPUT.PUT_LINE('Ingresos Totales por Ventas: $' || TO_CHAR(resultado, '99999.99'));
-- END;
-- /