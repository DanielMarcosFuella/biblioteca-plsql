CREATE OR REPLACE TRIGGER trg_devolucion
AFTER UPDATE ON prestamos
FOR EACH ROW
WHEN (OLD.fecha_devolucion IS NULL AND NEW.fecha_devolucion IS NOT NULL)
BEGIN
    UPDATE libros
    SET stock = stock +1
    WHERE id_libro = :OLD.id_libro;
END;