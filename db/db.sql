CREATE DATABASE	ejemplo_stripe;
USE ejemplo_stripe

CREATE TABLE productos( 
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  codigodBarra VARCHAR(16) NULL,
  nombre VARCHAR(100) NULL,
  marca VARCHAR(50) NULL,
  modelo VARCHAR(50) NULL,
  precio FLOAT NOT NULL,
  descripcion VARCHAR(500) NULL,
  imagen VARCHAR(100) NULL,
  moneda VARCHAR(5) NULL
) 

INSERT INTO productos(codigodBarra,nombre,marca,modelo,precio,descripcion,imagen,moneda) 
VALUES('8263010986', 'Samsung Galaxy S21','Samsumg','SUN-2891',12000,'l Samsung Galaxy S21+ integra una pantalla increíble Dynamic Amoled con una tasa de refresh de hasta 120 Hz, esto nos asegura que siempre tendrás imágenes fluidas y sin ningún tipo de retraso, además de permite ver todos los detalles y una gama de colores profundos y vibrantes.','samsung-s21.png','mxn')