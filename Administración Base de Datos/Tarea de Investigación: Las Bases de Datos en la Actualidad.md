# Investigación Base de Datos. 

## Definir qué es una base de datos. 
Una base de datos es un conjunto organizado de información que se almacena de manera estructurada, permitiendo el acceso, la gestión y la actualización de una manera sencilla. Normalmente, se gestionan mediante sistemas de gestión de bases de datos (DBMS, DataBase Management System), que permiten realizar operaciones como consultas, inserciones, actualizaciones y eliminaciones de datos con la gran cantidad de datos que hay almacenadas.

## Tipos de bases de datos

### 1. Bases de datos relacionales.

Las bases de datos relacionales son aquellas que organizan los datos en tablas con filas y columnas. Utilizan el lenguaje SQL y las tablas puede estar relacionadas entre sí, lo que facilita el acceso y monitoreo de los datos.  

### 2. Bases de datos no relacionales

Son las bases de datos que no utilizan el modelo relacional tradicional. Son ideales para manejar grandes volúmenes de datos que pueden ser no estructurados o semiestructurados. Existen varios tipos de estas bases de datos, como documentales (Almacenan datos en documentos, como MongoDB), Clave-valor (almacenan datos como pares de clave-valor, como Redis), columnar (organizan datos en columnas en lugar de filas, optimizando la lectura de grandes conjuntos de datos como Apache Cassandra), grafos (diseñadas para gestionar relaciones complejas entre datos como Neo4j).

### 3. Bases de datos orientadas a objetos

Este tipo de bases de datos almacena información en forma de objetos, similar a la programación orientada a objetos. Los objetos pueden contener tanto datos como métodos que operan sobre esos datos, y esto permite una mayor flexibilidad y la posibilidad de manejar datos complejos.  Ejemplos incluyen db4o y ObjectDB.

### 4. Bases de datos en la nube

Las bases de datos en la nube son bases de datos ofrecidas como servicio a través de plataformas en la nube, lo que permite a las organizaciones gestionar su infraestructura sin necesidad de mantener servidores físicos y esto a su vez permite escalar fácilmente dichas bases de datos, dicho de otro modo, la ampliación de los recursos necesarios para gestionarlas es más sencilla. Pueden ser tanto relacionales como NoSQL. Ejemplos incluyen Amazon RDS (para bases de datos relacionales), Google Cloud Firestore (NoSQL) y Microsoft Azure SQL Database.


## Historia y evolución
