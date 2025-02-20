USE curso;
CREATE TABLE Ventas1 (
id_venta INT PRIMARY KEY AUTO_INCREMENT,
Monto DECIMAL(6,2),
id_cliente INT,
Fech_venta DATE,
Método_pago VARCHAR(20) 
);

INSERT INTO ventas1 (Monto, id_cliente) VALUES (500.00, 101);
INSERT INTO ventas1 (Monto, id_cliente) VALUES (300.00, 102);
INSERT INTO ventas1 (Monto, id_cliente) VALUES (700.00, 101);
INSERT INTO ventas1 (Monto, id_cliente) VALUES (250.00, 103);
INSERT INTO ventas1 (Monto, id_cliente) VALUES (150.00, 102);

SELECT id_cliente, SUM(MONTO)
FROM VENTAS1
GROUP BY id_cliente; 

