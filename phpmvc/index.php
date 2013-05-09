<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
require_once('usuarios_model.php');
# Traer los datos de un usuario 
$usuario1 = new Usuario();
$usuario1->get('Fulanito');
print $usuario1->nombre . ' ' . $usuario1->apellidos . ' existe<br>';

# Crear un nuevo usuario 
$new_user_data = array(
    'nickname'=>'Alberto', 'password'=>'123456', 'nombre'=>'Alberto Domingo', 'apellidos'=>'Dmgz', 'fechanacimiento'=>'1990-10-10', 'email'=>'albert@mail.com', 'telefono'=>'', 'celular'=>''
);
$usuario2 = new Usuario();
$usuario2->set($new_user_data);
$usuario2->get($new_user_data['nickname']);
print $usuario2->nombre . ' ' . $usuario2->apellidos . ' ha sido creado<br>';

# Editar los datos de un usuario existente 
$edit_user_data = array(
    'nickname'=>'Alberto', 'password'=>'1234567', 'nombre'=>'Beto', 'apellidos'=>'Dmgz', 'fechanacimiento'=>'1990-10-10', 'email'=>'albert2000@mail.com', 'telefono'=>NULL, 'celular'=>NULL
);
$usuario3 = new Usuario();
$usuario3->edit($edit_user_data);
$usuario3->get($edit_user_data['nickname']);
print $usuario3->nombre . ' ' . $usuario3->apellidos . ' ha sido editado<br>';
exit();
# Eliminar un usuario
$usuario4 = new Usuario();
$usuario4->get($new_user_data['nickname']);
$usuario4->delete($new_user_data['nickname']);
print $usuario4->nombre . ' ' . $usuario4->apellidos . ' ha sido eliminado';
?>
    </body>
</html>
