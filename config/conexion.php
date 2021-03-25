<?php
class Conexion{
   private $conexion;
   private $host = 'localhost';
   private $userNameDB = 'root';
   private $database = 'ejemplo_stripe';
   private $password = '';
   
   
   public function __construct(){
       $this->conexion = mysqli_connect($this->host, $this->userNameDB, $this->password, $this->database);
   }

   public function closeConexion($cnn){
     mysqli_close($cnn);
   }

   public function getConexion(){
       return $this->conexion;
   }
}

// $conexion =  new Conexion();

// if($conexion->getConexion()){
//     echo 'Conexion exitosa';
// }else{
//     echo 'Fallo conxion';

// }

// var_dump($conexion->getConexion());