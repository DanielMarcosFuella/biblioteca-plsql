EXEC registrar_prestamo (1, 1);
EXEC registrar_prestamo (2, 2);
EXEC registrar_prestamo (3, 3);
EXEC registrar_prestamo (1, 2);

SELECT * FROM libros;

UPDATE prestamos SET fecha_devolucion = SYSDATE WHERE id_prestamo = 1;
UPDATE prestamos SET fecha_devolucion = SYSDATE WHERE id_prestamo = 2;

SELECT * FROM libros;

EXEC registrar_prestamo (1, 3);
EXEC registrar_prestamo (2, 3);
EXEC registrar_prestamo (3, 3); --puede fallar


