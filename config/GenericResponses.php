<?php
class GenericResponses{

    /**
     * @access public
     * @param string $mensaje Debe ser una palabra corta para usar de validacion en el fronteden como exito o error
     * @param int $statusCode Codigo de respuesta httpCode
     * @param mixed $data Aqui se puede incluir un conjunto de registros, objetos o Enums(defines)
     * @param string $detail Puede ser una descripcion del proceso mas detallado para mostrar en el frontend
     * @return object
     * Funcion estatica que devuelve el cuerpo de una respuesta 
     */
    public static function responseJsonGeneral($mensaje, $statusCode, $data, $detail){
        return array("msj"        =>$mensaje,
                     "statusCode" => $statusCode,
                     "data"       => $data,
                     "detail"     => $detail);
    }

    /**
     * @access public
     * @param string $titulo Debe ser una palabra corta para usar de validacion en el fronteden como exito o error
     * @param int $statusCode Codigo de respuesta httpCode
     * @param mixed $data Aqui se puede incluir un conjunto de registros, objetos o Enums(defines)
     * @return array
     * Funcion estatica que devuelve el cuerpo de una respuesta para un cunjunto de registros, resultados de una consulta
     */
    public  static function responseJsonForInquiries($titulo, $data, $statusCode){
        return array($titulo      => $data,
                     "statusCode" => $statusCode);
    }

}