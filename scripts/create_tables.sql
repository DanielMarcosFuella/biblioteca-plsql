CREATE TABLE usuarios (
id_usuario NUMBER PRIMARY KEY,
nombre VARCHAR2(100),
email VARCHAR2(100)
);

CREATE TABLE libros (
id_libro NUMBER PRIMARY KEY,
titulo VARCHAR2(100),
autor VARCHAR2 (100),
stock NUMBER
);

CREATE TABLE prestamos (
id_prestamo NUMBER PRIMARY KEY,
id_usuario NUMBER,
id_libro NUMBER,
fecha_prestamo DATE,
fecha_devolucion DATE,
FOREIGN KEY (id_libro) REFERENCES libros(id_libro),
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);