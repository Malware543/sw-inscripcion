
<?php
include("conexion.php");

        $alumnos = "SELECT * FROM alumnos";
        $result = mysqli_query($conectar,$alumnos);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="usuarios.css">
    <title>Tecnologico de estudios superiores de Jocotitlan</title>
</head>
<body>

    <div id="sidemenu" class="menu-collapsed">
            <!--header-->
    <div id="header">
        <div id="title"><span>Control de alumnos</span></div>
        <div id="menu-btn">
            <div class="btn-hamburger"></div>
            <div class="btn-hamburger"></div>
            <div class="btn-hamburger"></div>
        </div>
    </div>
    <!--profile-->
    <div id="profile">
        <div id="photo"><img src="img/encargado.png" alt=""></div>
        <div id="name"><span>Elias Salazar Reyes</span></div>
    </div>
    <!--items-->
    <div id="menu-items">
        <div class="item">
            <a href="#">
                <div class="icon"><img src="img/maestros.png" alt=""></div>
                <div class="title"><span>Maestros</span></div>
            </a>
            <div class="item separator"></div>
        </div>
        
        <div class="item">
            <a href="inicioSesion.html">
                <div class="icon"><img src="img/cerrar.png" alt=""></div>
                <div class="title"><span>Cerrar sesion</span></div>
            </a>
        </div>
    </div>
    
    </div>
    <div id="main-container"><span>Alumnos registrados</span></div>

    <div id="alumnos">
        <?php
        while($row=mysqli_fetch_assoc($result)){
            echo $row["nombre"]." ".$row["ape_pat"]." ".$row["ape_mat"]." ".$row["semestre"]." ".$row["salon"]." ".
            $row["turno"];
            echo nl2br("\n");
        }
        ?>
    </div>
    <script>
        const btn = document.querySelector('#menu-btn');
        const menu = document.querySelector('#sidemenu');
        const datos = document.querySelector('#datos');
        btn.addEventListener('click',e=>{
            menu.classList.toggle("menu-expanded");
            menu.classList.toggle("menu-collapsed");
            datos.classList.toggle("contraido");
            datos.classList.toggle("extendido");
        });
    </script>
    
</body>
</html>