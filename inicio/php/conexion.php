<?php
    //importamos la libreria fpdf
    require ('fpdf.php');

    //variables para la conexion
    $host = "localhost";
    $database = "escuela";
    $user = "root";
    $contra = "root";

    $conectar = mysqli_connect($host,$user,$contra,$database);

    if(!$conectar){
        die("Error:".mysqli_connect_error());
    }

    echo "Conexion exitosa";
    echo "Hola";
    mysqli_close($conectar);

    $pdf=new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(40,10,'¡Mi primera página pdf con FPDF!');
    $pdf->Output();
    
?>