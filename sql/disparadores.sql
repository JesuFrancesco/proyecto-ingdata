create or replace TRIGGER DisminuirStockProducto
AFTER INSERT ON Transaccion_Cliente
FOR EACH ROW
DECLARE
  stockActual NUMBER;
BEGIN
  SELECT CantidadStock INTO stockActual
  FROM Producto
  WHERE ID = :NEW.ID_Producto;

  IF stockActual > 0 THEN
    UPDATE Producto
    SET CantidadStock = CantidadStock - 1
    WHERE ID = :NEW.ID_Producto;
  ELSE
    RAISE_APPLICATION_ERROR(-20001, 'Lo sentimos, este producto está agotado');
  END IF;
END;