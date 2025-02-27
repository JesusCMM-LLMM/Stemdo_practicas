// Obtener el nombre del script
const NomScript = process.argv[1].split('/').pop();

// Obtener los parámetros que se le pasan al script
const params = process.argv.slice(2); //Como el argumento 1 y 2 son respectivamente la ruta al node js y la ruta al ejecutable, los cortamos con el slice
const NumParams = params.length;

// Obtener información del usuario
const usuario = process.env.USERNAME; 
const DirHome = process.env.HOMEPATH; //ruta al dir home
const DirActual = process.cwd(); // dir actual

// Mostrar la información
console.log(`Nombre del script: ${NomScript}`);
console.log(`Parámetros recibidos: ${params.length}`);
console.log(`Nombre de usuario: ${usuario}`);
console.log(`Directorio home del usuario: ${DirHome}`);
console.log(`Directorio actual: ${DirActual}`);
