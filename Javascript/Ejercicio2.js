// Obtener el nombre del script
const scriptName = process.argv[1].split('/').pop(); //pop nos coge el ultimo elemento de la cadena, / es el separador y argv[1] es la ruta del script

// Obtener los parámetros que se le pasan al script
const params = process.argv.slice(2); //Como el argumento 1 y 2 son respectivamente la ruta al node js y la ruta al ejecutable, los cortamos con el slice
const numberOfParams = params.length;

// Obtener información del usuario
const username = process.env.USERNAME; //usuario
const homeDir = process.env.HOMEPATH; //ruta al dir home
const currentDir = process.cwd(); // dir actual

// Mostrar la información
console.log(`Nombre del script: ${scriptName}`);
console.log(`Parámetros recibidos: ${params.length}`);
console.log(`Nombre de usuario: ${username}`);
console.log(`Directorio home del usuario: ${homeDir}`);
console.log(`Directorio actual: ${currentDir}`);
