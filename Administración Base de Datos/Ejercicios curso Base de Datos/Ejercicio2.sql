USE curso;
CREATE TABLE Ventas (
id_ventas INT PRIMARY KEY AUTO_INCREMENT,
Fech_venta DATE NOT NULL,
Monto DECIMAL(6,2),
Método_pago VARCHAR(20),
id_libro INT,
FOREIGN KEY (id_libro) REFERENCES libros (id_libro)  
);