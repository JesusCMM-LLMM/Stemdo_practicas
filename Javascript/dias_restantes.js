

// UTC(fecha) - getTime() -> todo estos estará en milisegundos

// 86.400.000 milisegundos en un dia

const fechaUTC = new Date(Date.UTC(2025, 11, 31, 23, 59, 59));
const fechaActual = new Date();
const fec_act = fechaActual.getTime();
const dif = (fechaUTC - fec_act) / 86400000

// Mostrar el resultado

console.log(dif);

