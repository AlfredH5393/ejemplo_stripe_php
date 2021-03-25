<?php
require_once('../config/conexion.php');
require_once('../model/model_productos.php');
require_once('../config/cors.php');

$method = $_SERVER['REQUEST_METHOD'];

$producto = new Producto();

switch($method){
    case 'GET':
        echo $producto->getAll();
        break;
    default:
        header("Content-type: application/json;");
        http_response_code(400);
        echo json_encode(GenericResponses::responseJsonGeneral('Error',400,[],'Opcion no valida'));
        break;
}
