let contenedor = document.getElementById("contenido");
let indice = document.getElementById("indice");
let numConsultasMostrar = 28;



let extensiones = {
    1: "txt",
    2: "txt",
    3: "html",
    5: "html",
    6: "txt",
    8: "html",
    9: "txt",
    13: "txt",
    16: "txt",
    23: "txt",
    24: "txt",
    28: "html"
};

async function cargarConsultas(){
    for (let i = 1; i < numConsultasMostrar+1; i++){
        let extension = extensiones[i] || "xml";

        indice.innerHTML += `<a href="#ej${i}" class="botones">Ejercicio ${i}</a>`;

        contenedor.innerHTML += `
            <li id= "ej${i}">
                <div>
                    <h2>Ejercicio ${i}</h2>
                    <a href="src/${i}.xq">Consulta</a>
                    <a href="target/{i}.${extension}">Resultado</a>
                </div>
                <a href="images/${i}cod.PNG">
                    <img src="images/${i}cod.PNG" alt="Consulta ${i}">
                </a>
                <a href="images/${i}res.PNG">
                    <img src="images/${i}res.PNG" alt="Resultado ${i}"> 
                </a>
            </li>
        `


        console.log(`Consulta: ${i}`);
    }
}

cargarConsultas();