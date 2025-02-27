//Se genera un número aleatorio y debe adivinarse
const readline = require('readline-sync');  //Si eso no está instalado, no se pueden introducir datos
                                            //por teclado, se instala con "npm install readline-sync"

const NumSecr = Math.floor(Math.random() * 100) + 1;
let intento = 0; 
//console.log(NumSecr); // Esto borralo luego melon

//Hasta aquí está bien


// Pedir al usuario que introduzca un número y convertir el valor introducido a un número
function inicio() {
    const introd = readline.question("Introduce tu numero para adivinar el numero secreto: ");
    return Number(introd);
    }

// al principio intentaba que la variable adiv formase parte de inicio, pero no podía, es mejor 
// tenerla dentro de comprobacion, declararla y en el bucle igualarla al valor numérico de 'inicio()'
// en cada vuelta del bucle

function comprobacion () {
    let adiv;
    do {
        adiv = inicio();
        intento++

        if (adiv > NumSecr) {
        console.log('El numero secreto es menor');
        }
        else if (adiv < NumSecr) {
        console.log('El numero secreto es mayor');
        }
        else {
        console.log(`Has acertado el numero secreto en ${intento} intentos`);
        }
    } while (adiv !== NumSecr) 
}

comprobacion(); 