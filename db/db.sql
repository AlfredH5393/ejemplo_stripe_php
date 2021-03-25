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
VALUES(
  '8263010986',
  'Samsung Galaxy S21',
  'Samsumg','SUN-2891',
  12000,
  'l Samsung Galaxy S21+ integra una pantalla increíble Dynamic Amoled con una tasa de refresh de hasta 120 Hz, esto nos asegura que siempre tendrás imágenes fluidas y sin ningún tipo de retraso, además de permite ver todos los detalles y una gama de colores profundos y vibrantes.',
  'samsung-s21.png',
  'mxn'
),(
    '8263010987',
    'Xiaomi Pocophone X3 NFC 64 GB',
    'Xiaomi',
    'SUN-2892',
    5000,
    '¿Estás en busca del nuevo Xiaomi Pocophone X3? Obvi aquí en doto.com.mx te traemos esta chulada de smartphone, integra una pantalla FHD+ de 6.67”, cuenta con 4 cámaras de 64 + 13 + 2 + 2 MP y un sensor selfie de 20 MP pa’ que salgas más precioso de lo que ya eres.',
    'pocox3.jpg',
    'mxn'
  ),
  (
    '8263010988',
    'Oppo Reno4 Z 5G 128Gb 8Gb Ram - Negro',
    'OPPO',
    'SUN-2893',
    7999,
    'el nuevo Oppo Reno4 Z 5G, este guapeton viene con un sistema de 4 cámaras de 48 + 8 + 2 + 2 MP, además de un procesador enorme, un MediaTek Dimensity 800 siendo un procesador muy poderoso al momento de trabajar y para los más exigentes, una pantalla con hasta 120 Hz de tasa de refresh',
    'reno_4-2_3.png',
    'mxn'
  ), (
    '8263010989',
    'Realme 7 Pro 128GB 8GB Ram',
    'Realme',
    'SUN-2894',
    6000,
    'Si lo que buscas es tener uno enorme procesador y unas cámaras para toda tus historias de Instagram, te tenemos una buena noticia, te traemos el nuevo Realme 7 Pro, esta chulada viene con 4 cámaras de 64 + 8 + 2 + 2 MP y una frontal de 32',
    'realme7.png',
    'mxn'
  ), (
    '8263010990',
    'Motorola Moto Edge 5G 128GB 6GB - Negro',
    'Motorola',
    'SUN-2895',
    10000,
    'El moto edge 5g integra una excelente pantalla curva inmersiva con una calidad de imagen HDR10 impresionante, además de contar con una pantalla OLED de 6.7 "y 90 Hz, vas a poder todos los detalles de tus series y programas favoritos',
    'motoedge5g.jpg',
    'mxn'
  ), (
    '826301091',
    'OnePlus Nord N10 5G 128GB 6GB Ram',
    'One Plus',
    'SUN-2896',
    6000,
    'el OnePlus Nord N10 5G, esta hermosura viene a hacer tu vida más sencilla comenzando con sus cámaras de 64 + 8 + 2 + 2 MP, además un procesador poderoso siendo el Snapdragon 690.',
    'n10.png',
    'mxn'
  ),(
    '826301092',
    'Samsung Galaxy A51',
    'Samsumg',
    'SUN-2897',
    7500,
    'una pantalla súper AMOLED FHD+ de 6.5” un poquito más grande que el A50, hablando de las mejoras, Samsung nos da una cámara más para tener cuatro lentes de 48+12+5+5 MP y en su cámara selfie nos sorprende con 32MP',
    'a51.jpg',
    'mxn'
  ),(
    '8263010993',
    'Samsung Galaxy A10s',
    'Samsumg',
    'SUN-2898',
    3100,
    'Te presentamos al nuevo Samsung Galaxy A10S, esta hermosura viene con una cámara principal de 13 MP f1,8 y una de profundidad de 2 MP con esto captarás todo lo que es importante, además de una frontal de 8 MP',
    'a10s.jpg',
    'mxn'
  );

CREATE TABLE venta(
 id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 fecha DATE NULL,
 idTransaccionStripe VARCHAR(50) NOT NULL
 ) 
 
 CREATE TABLE venta_detalle(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  idVenta INT NULL,
  idProducto INT NULL,
  cantidad INT NULL,
  precio FLOAT  NULL,
  importe FLOAT NULL,
  FOREIGN KEY (idVenta) REFERENCES `venta`(id),
  FOREIGN KEY (idProducto) REFERENCES `productos`(id)
 );