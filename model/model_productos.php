<?php
require('../config/GenericResponses.php');
class Producto{
    private $sql;
    private $connect;
    private $db;

    public function __construct(){
        $this->startDB();
    }

    private function startDB(){
        $this->db = new Conexion();
        $this->connect =  $this->db->getConexion();
    }

    private function closeConexion(){
        $this->db->closeConexion($this->connect);
    }

    /**
     * Funcion que obtiene todos los registros de la base de datos
     */
    public function getAll(){
        $this->sql = "SELECT * FROM productos";
        $search = $this->connect->query($this->sql);
        $this->connect->set_charset("utf8");
        $productos = array();
        if($search){
            while( $row = mysqli_fetch_array($search)){
                $productos[] = array(
                    'id'           => $row['id'],
                    'codigodBarra' => $row['codigodBarra'],
                    'nombre'       => $row['nombre'],
                    'marca'        => $row['marca'],
                    'modelo'       => $row['modelo'],
                    'precio'       => $row['precio'],
                    'descripcion'  => utf8_encode($row['descripcion']),
                    'imagen'       => $row['imagen'],
                    'moneda'       => $row['moneda']

                );
            }
            http_response_code(200);
            $response = GenericResponses::responseJsonForInquiries('productos', $productos, 200);
        }else{
            http_response_code(400);
            $response = GenericResponses::responseJsonGeneral('error', 400, 0, 'Informacion no se encontrada en em modulo Productos');
        }
        
        $this->closeConexion();
        return json_encode($response);
    }

}