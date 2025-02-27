// Los parámetros se deberían pasar al ejecutar el script (node calc.js par1 par2 par3)

const args = process.argv.slice(2); 
const num1 = Number(args[0]); 
const oper = args[1]; 
const num2 = Number(args[2]); 

if (oper == "+") {
    const suma = num1 + num2 
    console.log(`la suma es ${suma}`)
}
else if (oper == "-") {
    const resta = num1 - num2 
    console.log(`la resta es ${resta}`)
}
else if (oper == "*") {
    const mult = num1 * num2 
    console.log(`la multiplicacion es ${mult}`)
}
else if (oper == "/") {
    const div = num1 / num2 
    console.log(`la division es ${div}`)
}
else {
    console.log("No es un operador reconocido")
}