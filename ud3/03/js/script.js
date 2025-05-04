/*Definición de las imágenes en un vector.*/ 
const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8'
];


function crearTablero(){
    const tablero = document.getElementById("tablero");

    for (let i = 0; i < 2; i++){
        const fila = document.createElement("div");
        fila.classList.add("fila");

        for (let j = 0; j < 3; j++){
            const columna = document.createElement("div");
            columna.classList.add("casilla");
        
    

    const textHover = document.createElement("p");

    textHover.textContent = "Pulsa para mostrar imagen";
    textHover.style.display = "none";
    columna.appendChild(textHover);

    columna.addEventListener("mouseover", function() {
        if(!columna.querySelector("img")){
            textoHover.style.display= "block";
        }
    });

    columna.addEventListener("mouseout", function(){
        textHover.style.display = "none";
    });

            columna.addEventListener("click", function(){
                if(!columna.addEventListener("img")){
                    const img = document.createElement("img");
                    const numero = Math.floor(Math.random() * imagenes.length);
                    img.src = `https://picsum.photos/200?random=${numero}`;
                    img.classList.add("imagen");
                    columna.appendChild(img);

                    textHover.style.display = "none";
                } else{
                    const numero = Math.floor(Math.random() * imagenes.length);
                    columna.querySelector("img").src = `https://picsum.photos/200?random=${numero}`;
                }
            });

            fila.appendChild(columna);
        }
        tablero.appendChild(fila);
        }
    }

window.onload = crearTablero;