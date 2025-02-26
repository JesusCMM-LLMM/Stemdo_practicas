// El objetivo es crear un **script en JS** que realice las siguientes acciones:  

//**Tareas a realizar**:  
//- Borrar la pantalla.  
//- Mostrar un mensaje de bienvenida: **“Hola, nombre de usuario. La fecha actual es: .”**  
//- Indicar en qué directorio estás: **“directorio actual”**  

function limpiar(){
    console.clear
}
function mensaje(){
    const currentDate = new Date();
    const username = process.env.USERNAME 
    console.log(`Hola, ${username}. La fecha actual es: ${currentDate}.`);
}
function Directorio(){
    const currentDirectory = process.cwd();
    console.log(`Directorio actual: ${currentDirectory}`);
}

limpiar();
mensaje();
Directorio(); 