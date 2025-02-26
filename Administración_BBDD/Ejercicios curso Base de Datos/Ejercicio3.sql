USE curso;
CREATE TABLE Estudiante (
ID_Est INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50) NOT NULL,
Edad INT,
Nota_final INT NOT NULL
); 

SELECT nombre, nota_final
FROM Estudiante
WHERE nota_final >= 80; 