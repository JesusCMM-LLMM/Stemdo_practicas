// El objetivo es crear un **script en JS** que realice las siguientes acciones:  

//**Tareas a realizar**:  
//- Borrar la pantalla.  
//- Mostrar un mensaje de bienvenida: **“Hola, nombre de usuario. La fecha actual es: .”**  
//- Indicar en qué directorio estás: **“directorio actual”**  

function limpiar(){
    console.clear
}
function mensaje(){
    const fecha = new Date();
    const usuario = process.env.USERNAME 
    console.log(`Hola, ${usuario}. La fecha actual es: ${fecha.getUTCFullYear}.`);
}
function Directorio(){
    const DirActual = process.cwd();
    console.log(`Directorio actual: ${DirActual}`);
}

limpiar();
mensaje();
Directorio(); 
