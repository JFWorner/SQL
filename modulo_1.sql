/*
 * ------------------------------------------------------------------
 * 							Entrega 2 Modulo 1
 * SQL: Postgres
 * Curso: SQL Flex
 * Autor: Juan Francisco Martorello
 * ------------------------------------------------------------------
 */

-- Crear la base previamnete
-- CREATE DATABASE retail_project;
-- \c retail_project

---------------------------------------------------------------------
--								 DDL
---------------------------------------------------------------------
/*

CREATE TABLE clientes(
 	id 		SERIAL PRIMARY KEY,
    nombre	VARCHAR(100) NOT NULL,
    email	VARCHAR(150) NOT NULL UNIQUE,
    edad    INTEGER,
 	CONSTRAINT chk_edad CHECK (edad >= 18)		-- CHECK 1
);

CREATE TABLE productos(
	id			SERIAL PRIMARY KEY,
    nombre		VARCHAR(100) NOT NULL,
    categoria	VARCHAR(50) NOT NULL,
    precio		DECIMAL(10,2) NOT NULL,
    stock		INTEGER NOT NULL DEFAULT 0,
    CONSTRAINT chk_precio CHECK (precio > 0),	-- CHECK 2
    CONSTRAINT chk_stock  CHECK (stock >= 0)	-- CHECK 3
);

CREATE TABLE ventas(
 	id				SERIAL PRIMARY KEY,
    id_cliente		INTEGER NOT NULL REFERENCES clientes (id) ON DELETE RESTRICT,
    id_producto		INTEGER NOT NULL REFERENCES productos (id) ON DELETE RESTRICT,
    cantidad       	INTEGER NOT NULL,
    fecha_venta    	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_cantidad CHECK (cantidad > 0)			-- CHECK 4
);

---------------------------------------------------------------------
--								 DML
---------------------------------------------------------------------

*/
/*
BEGIN;

INSERT INTO clientes (nombre, email, edad) VALUES
    ('Ana Gómez', 'ana.gomez@mail.com', 34),
    ('Bruno López', 'bruno.lopez@mail.com', 28),
    ('Carla Díaz', 'carla.diaz@mail.com', 41),
    ('Diego Fernández', 'diego.fdez@mail.com', 22),
    ('Elena Ruiz', 'elena.ruiz@mail.com', 37);
COMMIT;

BEGIN;
INSERT INTO productos (nombre, categoria, precio, stock) VALUES
    ('Teclado mecánico', 'Periféricos', 45000.00, 30),
    ('Mouse inalámbrico', 'Periféricos', 18000.00, 50),
    ('Monitor 24"', 'Monitores', 220000.00, 15),
    ('Notebook 14"', 'Computadoras', 950000.00,  8),
    ('Auriculares BT', 'Audio', 62000.00, 25);
COMMIT;

BEGIN;
INSERT INTO ventas (id_cliente, id_producto, cantidad) VALUES
    (1, 1, 2),
    (2, 3, 1),
    (3, 4, 1),
    (4, 2, 3),
    (5, 5, 1);
COMMIT;
*/
--/*
---------------------------------------------------------------------
--						 Manipulación de datos
---------------------------------------------------------------------

-- Verificación
-- SELECT * FROM productos WHERE categoria = 'Periféricos';

-- UPDATE
UPDATE productos
SET precio = precio * 1.10
WHERE categoria = 'Periféricos';

-- Verificación
-- SELECT * FROM ventas WHERE id = 4;

-- DELETE
DELETE FROM ventas
WHERE id = 4;


 --*/