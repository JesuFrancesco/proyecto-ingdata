CREATE OR REPLACE FUNCTION calcIngresosTotales RETURN NUMBER IS
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

create or replace FUNCTION calcPosiblesGanancias RETURN NUMBER IS
  total_ingresos NUMBER := 0;
  v_producto_nombre VARCHAR2(255);
  v_cantidad_stock NUMBER;
  v_ganancias NUMBER;
BEGIN
  FOR product IN
    (SELECT
       Nombre,
       CantidadStock,
       Precio * CantidadStock AS Ganancias
     FROM
       (SELECT
          Nombre,
          CantidadStock,
          Precio,
          ROW_NUMBER() OVER (ORDER BY CantidadStock DESC) AS rn
        FROM
          Producto)
     WHERE
       rn <= 3)
  LOOP
    v_producto_nombre := product.Nombre;
    v_cantidad_stock := product.CantidadStock;
    v_ganancias := product.Ganancias;

    -- Mostrar la información utilizando DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Producto: ' || v_producto_nombre || ', Stock: ' || v_cantidad_stock || ', Posibles Ganancias: ' || v_ganancias);
  END LOOP;

  RETURN total_ingresos;
END calcPosiblesGanancias;

-- /

-- DECLARE
--      pivote NUMBER;
-- BEGIN
--      pivote := calcPosiblesGanancias;
-- END;
-- /