<?php
    //importamos la libreria fpdf
    require ('fpdf.php');

    //variables para la conexion
    $host = "";
    $database = "";
    $user = "";
    $contra = "";

    $conectar = mysqli_connect($host,$user,$contra,$database);

    if(!$conectar){
        die("Error:".mysqli_connect_error());
    }

    echo "Conexion exitosa";
    mysqli_close($conectar);

    $pdf=new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(40,10,'¡Mi primera página pdf con FPDF!');
    $pdf->Output();
    
?>