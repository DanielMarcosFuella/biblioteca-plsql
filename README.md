Proyecto PL/SQL nivel iniciación: Biblioteca 📚.

Este proyecto un sistema simple de gestion de biblioteca usando PL/SQL.

Permite:

- Crear tablas necesarias.
- Registrar libros y ususarios.
- Autoincrementar clave primaria al generar prestamos.
- Ajustar automaticamente stock de libros y horarios al realizar prestamos y devoluciones.
- Varios test para comprobar su correcto funcionamiento.

Estructura del proyecto:


##  Estructura del Proyecto

| Archivo               | Descripción                                                                 |
|-----------------------|------------------------------------------------------------------------------|
| `setup.sql`           | Ejecuta todos los scripts necesarios para preparar el entorno (excepto pruebas). |
| `create_tables.sql`   | Crea las tablas necesarias para el sistema de biblioteca.                    |
| `create_sequences.sql`| Crea las secuencias usadas para IDs automáticos.                             |
| `insert_data.sql`     | Inserta datos de ejemplo como libros, usuarios y préstamos.                  |
| `procedures.sql`      | Contiene los procedimientos almacenados, como registrar préstamos.           |
| `triggers.sql`        | Contiene triggers que se ejecutan en eventos como inserciones o actualizaciones. |
| `test_cases.sql`      | Contiene casos de prueba para validar las funcionalidades implementadas.     |


## 🧾 Requisitos

- Oracle Database o compatible con PL/SQL
- SQL*Plus, SQL Developer, u otro cliente que soporte ejecución de scripts SQL/PLSQL

## 🚀 Instrucciones de Ejecución

### 🔧 Inicializar el entorno

Para preparar toda la base de datos (tablas, secuencias, datos, procedimientos y triggers), ejecuta:

@setup.sql

Para realizar las pruebas ejecuta:

@test_cases.sql
