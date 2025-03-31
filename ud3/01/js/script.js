var titulo = document.getElementById("titulo");
var parrafo = document.getElementsByClassName("parrafo");
var cuerpo = document.getElementById("cuerpo");


titulo.innerText="Nuevo título";

parrafo[0].innerText = "Este es un párrafo 1.";
parrafo[1].innerText = "Este es un párrafo 2.";
parrafo[2].innerText = "Este es un párrafo 3.";


cuerpo.style.backgroundColor = "#f4f4f4";
cuerpo.style.display = "flex"
cuerpo.style.flexDirection = "column"
cuerpo.style.alignItems = "center";
cuerpo.style.margin = "auto";

titulo.style.color = "#333";
titulo.innerHTML = "<b> UD3.1 DOCUMENT OBJECT MODEL </b>";
titulo.style.marginBottom = "15px";
titulo.style.textTransform = "uppercase";

for (var i = 0; i < parrafo.length; i++){
    parrafo[i].style.textAlign = "center";
    parrafo[i].style.fontSize = "18px";
    parrafo[i].style.padding = "15px";
    parrafo[i].style.margin = "5px";
    parrafo[i].style.width = "80%";
    parrafo[i].style.borderLeft="5px solid"
    parrafo[i].style.borderRadius="7px"
}


parrafo[0].style.color = "#e74c3c";
parrafo[0].style.backgroundColor = "#ffe6e6";
parrafo[0].style.border.color = "#c0392b";

parrafo[1].style.color = "#27ea60";
parrafo[1].style.backgroundColor = "#eaffea";
parrafo[1].style.border.color = "#27ea60";

parrafo[2].style.color = "#3498db";
parrafo[2].style.backgroundColor = "#e6f2ff";
parrafo[2].style.border.color = "#2980b9";



function saludo(){
    alert("Has pulsado el boton de saludar, por tanto: Hola, que tal? :)");
}

function fondoOscuro(){
    cuerpo.style.backgroundColor = "#000000";
    titulo.style.color = "white";
}

function cambiarParrafos(){
    for (var i = 0; i < parrafo.length; i++){
        parrafo[i].style.transform = "rotate(2deg)";
        parrafo[i].style.fontWeight = "bold";
    }
}