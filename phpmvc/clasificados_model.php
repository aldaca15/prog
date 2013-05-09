<?php 

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of usuarios_model
 *
 * @author Ali
 */
require_once('db_abstract_model.php');
class Usuario extends DBAbstractModel {
public $idclasificado;
public $titulo;
public $precio;
public $detalles;
public $marca;
public $modelo;
public $estado;
protected $idusuario;
public $creado;
public $actualizado;
public $nombreimagen;
private $clave;
function __construct() {
$this->db_name = 'vendeloya';
}
public function getmedia($user_data='') {
if($user_data != ''):
$this->query = "
 SELECT nombreimagen
 FROM media m, clasificados c 
 WHERE c.idclasificado = m.idclasificado
 AND m.idclasificado = '$user_data'
 ";
$this->get_results_from_query();
endif;
if(count($this->rows) == 1):
foreach ($this->rows[0] as $propiedad=>$valor):
$this->$propiedad = $valor;
endforeach;
endif;
}
public function setmedia($user_data=array()) {
if(array_key_exists('idclasificado', $user_data)):
$this->get($user_data['idclasificado']);
if($user_data['idclasificado'] != $this->idclasificado):
foreach ($user_data as $campo=>$valor):
$$campo = $valor;
endforeach;
$this->query = " 
 INSERT INTO media 
 (idclasificado, nombreimagen) 
 VALUES 
 ('$idclasificado', '$nombreimagen') 
 ";
$this->execute_single_query();
endif;
endif;
}
public function get($user_data='') {
if($user_data != ''):
$this->query = "
 SELECT idclasificado, titulo, precio, detalles, marca, modelo, estado, c.idusuario, creado, actualizado, nickname, email, telefono, celular
 FROM clasificados c, usuarios u 
 WHERE c.idusuario = u.idusuario
 AND idclasificado = '$user_data'
 ";
$this->get_results_from_query();
endif;
if(count($this->rows) == 1):
foreach ($this->rows[0] as $propiedad=>$valor):
$this->$propiedad = $valor;
endforeach;
endif;
}
public function set($user_data=array()) {
if(array_key_exists('idclasificado', $user_data)):
$this->get($user_data['idclasificado']);
if($user_data['idclasificado'] != $this->idclasificado):
foreach ($user_data as $campo=>$valor):
$$campo = $valor;
endforeach;
$this->query = " 
 INSERT INTO usuarios 
 (nickname, password, nombre, apellidos, fechanacimiento, email, telefono, celular) 
 VALUES 
 ('$nickname', '$password', '$nombre', '$apellidos', '$fechanacimiento', '$email', '$telefono', '$celular') 
 ";
$this->execute_single_query();
endif;
endif;
}
public function edit($user_data=array()) {
foreach ($user_data as $campo=>$valor):
$$campo = $valor;
endforeach;
$this->query = " 
 UPDATE usuarios SET nickname='$nickname', password='$password', nombre='$nombre', apellidos='$apellidos', fechanacimiento='$fechanacimiento', email='$email', telefono='$telefono', celular='$celular'
     WHERE nickname = '$nickname' 
 ";
$this->execute_single_query();
}
public function delete($user_data='') {
$this->query = " 
 DELETE FROM usuarios 
 WHERE nickname = '$user_data' 
 ";
$this->execute_single_query();
}
function __destruct() {
unset($this);
}
}
?>