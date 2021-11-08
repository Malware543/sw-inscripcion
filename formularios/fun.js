window.onload = function() {
    //agregamos un evento de escucha al boton
    document.getElementById("enviar").addEventListener("click",obtenerDatosAl);   
}

function obtenerDatosAl() {
    var id = document.getElementById("idCarrera").value;
    var nombre = document.getElementById("Nombre").value;
    var semestre = document.getElementById("Semestre").value;
    var salon = document.getElementById("Salon").value;
    //validamos el campo id solo se pueden ingregar datos de tipo int
    alert("id:"+id+" nombre:"+nombre+" semestre:"+semestre+" salon:"+salon)
    console.log("el marcos es gay");
}