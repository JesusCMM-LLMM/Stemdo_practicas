USE curso;
CREATE TABLE Productos (
ID_Prod INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50) NOT NULL,
Precio DECIMAL(6,2),
Cantidad_stock INT NOT NULL
); 

INSERT INTO Productos (Nombre, Precio, Cantidad_stock) VALUES ('Laptop', 1200.50, 10);
INSERT INTO Productos (Nombre, Precio, Cantidad_stock) VALUES ('Smartphone', 800.00, 0);
INSERT INTO Productos (Nombre, Precio, Cantidad_stock) VALUES ('Auriculares', 50.00, 25);
INSERT INTO Productos (Nombre, Precio, Cantidad_stock) VALUES ('Monitor', 300.00, 5);


SELECT nombre, Precio
FROM Productos
WHERE Cantidad_stock > 0
AND Precio < 500.00; 