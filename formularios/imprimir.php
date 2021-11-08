<?php 
include("conexion.php");

$alumnos = "SELECT * FROM alumnos where idal=1";
$carrera = "SELECT carrera.nombre FROM carrera inner join alumnos on (carrera.idca=1 and alumnos.idca=1) and alumnos.idal=1";
$materias = "SELECT materias.nombre, materias.creditos, materias.semestre
FROM alumnos inner join carrera on carrera.idca=1 inner join materias on (materias.idca=1 and materias.semestre='Primero') and (alumnos.idca=1 and alumnos.semestre='Primero')";
$result = mysqli_query($conectar,$alumnos);
$resultC = mysqli_query($conectar,$carrera);
$resultM = mysqli_query($conectar, $materias);

$row=mysqli_fetch_assoc($result);
$rowC=mysqli_fetch_assoc($resultC);


require ('fpdf.php');
$pdf=new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(50,10,"Nombre: ".$row["nombre"]." ".$row["ape_pat"]." ".$row["ape_mat"]);
$pdf->Ln();
$pdf->Cell(40,10,"Carrera: ".$rowC["nombre"]);
$pdf->Ln();
$pdf->Cell(40,10,"Materias");
$pdf->Ln();
while($rowM=mysqli_fetch_assoc($resultM)){
    $pdf->Cell(40,10,"Nombre:".$rowM["nombre"]);
    $pdf->Ln();
    $pdf->Cell(40,10,"Creditos:".$rowM["creditos"]." "."Semestre:".$rowM["semestre"]." "."Grupo:".$row["salon"]);
    $pdf->Ln();
}

$pdf->Output();
?>