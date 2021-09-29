<?php
include "conexion.php";    
echo "hola";

$materias = "SELECT * FROM materias";
$resultado = mysqli_query($conectar, $materias);
while($row=mysqli_fetch_assoc($resultado)){
    echo $row["nombre"];
}
echo "hola";
?>