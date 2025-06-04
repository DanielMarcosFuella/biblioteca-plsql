CREATE OR REPLACE PROCEDURE registrar_prestamo(
    p_id_usuario IN NUMBER,
    p_id_libro IN NUMBER
)
IS
    v_stock libros.stock%TYPE;
BEGIN
    SELECT stock INTO v_stock FROM libros WHERE id_libro = p_id_libro;
    
    IF v_stock >0 THEN
        INSERT INTO prestamos (
            id_prestamo, id_usuario, id_libro, fecha_prestamo, fecha_devolucion
        ) VALUES (
            prestamos_seq.NEXTVAL, p_id_usuario, p_id_libro, SYSDATE, NULL
        );
        UPDATE libros SET stock = stock -1 WHERE id_libro = p_id_libro;
    ELSE 
        RAISE_APPLICATION_ERROR (-20001, 'No hay unidades en stock');
        END IF;
END;