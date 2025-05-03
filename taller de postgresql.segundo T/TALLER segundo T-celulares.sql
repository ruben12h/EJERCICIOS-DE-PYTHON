-- Database: Base_de_datos_celulares

-- DROP DATABASE IF EXISTS "Base_de_datos_celulares";

CREATE DATABASE "Base_de_datos_celulares"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'es-ES'
    LC_CTYPE = 'es-ES'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


	CREATE TABLE clientes (
 id_cliente SERIAL PRIMARY KEY,
 nombre VARCHAR(100)NOT NULL,
 correo VARCHAR(100)NOT NULL );


CREATE TABLE productos (
 id_producto SERIAL PRIMARY KEY,
 nombre VARCHAR(100)NOT NULL,
 marca VARCHAR(50)NOT NULL,
 precio NUMERIC(10, 2)NOT NULL);


CREATE TABLE ventas(
id_ventas SERIAL PRIMARY KEY,
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)ON DELETE CASCADE,
fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP );


CREATE TABLE detalle_ventas(
id_detalle SERIAL PRIMARY KEY,
id_ventas INT NOT NULL,
FOREIGN KEY (id_ventas) REFERENCES ventas(id_ventas)ON DELETE CASCADE,
id_producto INT NOT NULL,
FOREIGN KEY (id_producto) REFERENCES productos(id_producto)ON DELETE CASCADE,
cantidad INT NOT NULL,
subtotal NUMERIC(10,2)NOT NULL);

SELECT * FROM detalle_ventas


INSERT INTO clientes (nombre, correo)VALUES
('Rediel Alegria','rediel@example.com'),
('Vanessa Mercado','vanessa@example.com'),
('Katerin Montaño','katerin@example.com');

INSERT INTO productos (nombre,marca,precio)VALUES
('iphone 16','Apple', 990.00),
('Galaxy S23','Samsung',899.99),
('Redmi Note 12','Xiaomi',799.99);

INSERT INTO ventas (id_cliente,fecha)VALUES
(1,'2025-04-04 02:30:00'),
(2,'2025-04-23 04:25:00'),
(3,'2025-02-05 07:07:00');


INSERT INTO detalle_ventas (id_ventas,id_producto,cantidad,subtotal)VALUES
(13,1,2,1.980),
(14,2,3,2.699),
(15,3,7,5.599);

IINER JOIN
Obtener todas las ventas con nombre del cliente y productos vendidos

SELECT
 v.id_ventas,
 c.nombre AS cliente,
 p.nombre AS producto,
 p.marca,
 dv.cantidad,
 dv.subtotal,
 v.fecha
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN detalle_ventas dv ON v.id_ventas = dv.id_ventas
INNER JOIN productos p ON dv.id_producto = p.id_producto;

Total de cada venta
sql
SELECT
 v.id_ventas,
 c.nombre AS cliente,
 SUM(dv.subtotal) AS total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN detalle_ventas dv ON v.id_ventas = dv.id_ventas
GROUP BY v.id_ventas, c.nombre;


Productos más vendidos
SELECT
 p.nombre AS producto,
 SUM(dv.cantidad) AS total_vendidos
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY total_vendidos DESC;



