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

El término Base de Datos se usó por primera vez en un simposio celebrado en California, en el año 1963. Su origen se remonta a la antigüedad, cuando ya existían bibliotecas y registros acumulados de hechos y situaciones, de forma escrita y gráfica. Obviamente, por falta de recursos tecnológicos, la búsqueda y recopilación de información era mucho más lenta que hoy día. No había máquinas que ayudaran y pudieran reemplazar el trabajo manual.

En 1884, los registros censales se realizaban de forma manual, hasta que Herman Hollerith inventó la máquina automática de perforación de tarjetas, que se usó en el censo de los Estados Unidos mejorando significativamente el proceso, de siete años de media a dos años y medio.

En la década de 1950, se cambia a un sistema de lectura secuencial y ordenada. El inglés Oberlin Smith, con este mecanismo, dio inicio a la automatización de la información referente a las nóminas, a través de cintas magnéticas, que a su vez respaldaban dicha información.

Ya en 1960 las empresas pudieron adquirir computadoras para facilitar sus gestiones. Las empresas informáticas habían bajado los precios de las mismas, para popularizar el uso de los discos, adelanto muy valioso y útil para esa época, ya que se ubicaba la información de manera directa, sin necesidad de saber la ubicación exacta de los datos. Se convirtió en una opción más rentable para las empresas pequeñas, medianas y grandes, y se se inició la primera generación de bases de datos de red (CODASYL) y las jerárquicas (IMS), que consistían en guardar las estructuras de datos en listas y árboles, además de que permitió crear un estándar en las bases de datos, gracias a los nuevos lenguajes implementados en los sistemas de información.  

Durante la década de los 70, Edgar Frank Codd, científico informático inglés, definió el modelo relacional. El multimillonario Lawrence “Larry” Ellison pudo desarrollar el Relational Software System o sistema de datos ORACLE, aprovechando esa información de Codd. Este consistió en un sistema de administración de Base de Datos relacionados, el cual se destacaba por su estabilidad, escalabilidad, transacciones y multiplataforma.
Finalmente IBM desarrolló unas técnicas para construir un sistema de bases de datos relacionales eficientes, las cuales llamó System R; por otro lado Ingres se desarrolló en la UBC en los años de 1974 a 1977.
Ingres utilizaba un lenguaje de consulta, llamado QUEL, dando pie a la creación de sistemas como Ingres Corporación, MS SQL Server, Sybase, PACE Wang, y Britton Lee-. Por su parte, el Sistema R utilizó el lenguaje de consulta Secuela, el cual ha contribuido al desarrollo de SQL / DS, DB2, Allbase, Oracle y SQL Non-Stop. En esta década el término Relational Database Management System, o RDBMS, fue ampliamente reconocido. Con esto se abrió paso al nacimiento de la segunda generación de los Sistemas Gestores de Bases de Datos.

En la década de los años 80, se desarrolló el SQL (Structured Query Language), un lenguaje de consultas que permite consultar, valga la redundancia, con el fin de recuperar información de una base de datos y a su vez, hacer cambios sobre esa misma base, de forma sencilla. Permitía analizar gran cantidad de información y especificar varios tipos de operaciones con la misma información, a diferencia de los años anteriores, cuando se diseñaron aplicaciones de procesamientos de transacciones.
SQL comenzó a ser el modelo estándar de las industrias, con su base de datos bajo un sistema de tablas (filas y columnas), pudo competir con las bases jerárquicas y de redes, ya que su nivel de programación era sencillo y el nivel era relativamente bajo. Estos sistemas de bases de datos relacionales fueron un éxito comercial, unido al aumento en la venta de ordenadores, estimulando el mercado de bases de datos, lo que provocó una caída importante en la popularidad de las redes y los modelos jerárquicos de bases de datos.

Durante finales de los 80 y los 90, la investigación en bases de datos se orientó hacia los objetos, con bastante éxito en la gestión de datos complejos. Luego de la sacudida de la industria de bases de datos, ahora muchas de las que sobrevivieron venden productos de alta complejidad de bases de datos, a precios muy elevados.

Ya en los 2000, Surgieron las bases de datos no relacionales, para manejar grandes volúmenes de datos no estructurados, con diferentes enfoques de almacenamiento (vistos anteriormente: grafos, documentales, clave-valor...)


> Fuente: https://conocelahistoria.com/historia-de-la-base-de-datos/

## Modelos de datos

Muchos de estos modelos ya los hemos nombrado en apartados anteriores, ahora vamos a definirlos con más claridad. 

### Modelo relacional: 

El modelo relacional organiza los datos en tablas (también llamadas relaciones), donde cada tabla representa una entidad y las columnas representan los atributos de esa entidad. Las filas son instancias de datos. Las relaciones entre las tablas se establecen mediante claves primarias y foráneas. Este modelo se basa en la teoría de conjuntos y permite realizar consultas complejas utilizando SQL (Structured Query Language). Es ideal para aplicaciones empresariales que requieren integridad de datos, transacciones y un esquema bien definido.

### Modelo de entidad-relación (ER): 

El modelo de entidad-relación es una herramienta de diseño que permite representar de manera gráfica las entidades (objetos de interés, como "facturas" o "productos") y sus relaciones. Se utiliza comúnmente en la fase de diseño de bases de datos relacionales. En un diagrama ER, las entidades se representan como rectángulos y las relaciones como rombos. Los atributos de las entidades se muestran como elipses conectadas a sus respectivas entidades. Este modelo ayuda a visualizar la estructura de la base de datos y a identificar las relaciones entre diferentes entidades.

### Modelo orientado a objetos: 

El modelo orientado a objetos almacena datos como objetos, que son instancias de clases. Cada objeto combina datos (atributos) y comportamientos (métodos). Este enfoque es especialmente útil en aplicaciones que requieren una representación más cercana al mundo real, donde los objetos pueden interactuar entre sí. Además, permite la herencia y el polimorfismo, facilitando la reutilización del código y la creación de estructuras de datos complejas. Este modelo es común en aplicaciones de software y sistemas donde la modularidad y la encapsulación son importantes.

### Modelo de grafos: 

El modelo de grafos se centra en la representación de datos mediante nodos (que representan entidades) y aristas (que representan relaciones). Este modelo es extremadamente útil para aplicaciones que implican conexiones complejas, como redes sociales, recomendaciones de productos y análisis de redes. Las bases de datos de grafos, como Neo4j, permiten realizar consultas eficientes sobre las relaciones entre datos, lo que facilita el descubrimiento de patrones y la exploración de datos interrelacionados. 

### Modelo documental: 

El modelo documental es utilizado en bases de datos NoSQL y almacena datos en documentos, típicamente en formatos como JSON, BSON o XML. Cada documento puede tener una estructura diferente, lo que proporciona gran flexibilidad y permite la inclusión de datos no estructurados o semiestructurados, pero a la vez esta diferencia estructural puede causar problemas de compatibilidad. El modelo documental es popular en aplicaciones web y móviles, donde los requisitos de esquema pueden cambiar con frecuencia y donde se valora la agilidad en el desarrollo.

## Tecnologías actuales

* **MySQL:** Es un sistema de gestión de bases de datos relacional de código abierto, muy popular en aplicaciones web. Se destaca por su simplicidad y eficacia, lo que lo hace accesible tanto para desarrolladores novatos como para expertos. MySQL es conocido por su alta velocidad y rendimiento, y es utilizado en una amplia variedad de entornos, desde pequeñas aplicaciones hasta grandes sistemas empresariales.

* **PostgreSQL:** Este sistema de gestión de bases de datos relacional (RDBMS) es conocido por su robustez y características avanzadas. Ofrece soporte para tipos de datos complejos, como JSONB y arrays, y permite la creación de extensiones, lo que le da gran flexibilidad. PostgreSQL es especialmente valorado por su capacidad para manejar cargas de trabajo pesadas y su compatibilidad con estándares SQL, lo que lo convierte en una opción preferida para aplicaciones empresariales críticas.

* **MongoDB:** Como base de datos NoSQL orientada a documentos, MongoDB permite almacenar datos en formato JSON, lo que facilita la gestión de información no estructurada y semiestructurada. Es ideal para aplicaciones web y móviles que requieren escalabilidad y agilidad en el desarrollo. MongoDB permite a los desarrolladores trabajar con datos de manera más dinámica, y su estructura flexible se adapta bien a cambios en los requisitos de los datos.

* **Cassandra:** Diseñada para manejar grandes cantidades de datos a través de múltiples nodos, Cassandra es una base de datos NoSQL que ofrece alta disponibilidad y escalabilidad horizontal. Es especialmente adecuada para aplicaciones que necesitan un rendimiento constante en entornos distribuidos, como redes sociales y sistemas de análisis en tiempo real. Su arquitectura de escritura optimizada permite gestionar grandes volúmenes de datos de manera eficiente.

* **Redis:** Esta base de datos en memoria de tipo clave-valor es conocida por su alta velocidad y eficiencia, lo que la hace ideal para aplicaciones que requieren acceso rápido a datos temporales, como sistemas de caché, colas de mensajes y sesiones de usuario. Redis soporta estructuras de datos avanzadas, lo que le permite realizar operaciones complejas con un rendimiento excepcional.

* **CockroachDB:** Una tecnología emergente en el ámbito de las bases de datos es CockroachDB, una base de datos SQL distribuida que se enfoca en la resiliencia y la escalabilidad. Su diseño permite que las aplicaciones manejen automáticamente fallos y crezcan horizontalmente sin necesidad de reconfiguración, lo que la hace atractiva para entornos en la nube y aplicaciones empresariales. CockroachDB combina la familiaridad de SQL con las ventajas de un sistema NoSQL, ofreciendo así una solución versátil para las necesidades actuales de datos en tiempo real.


## Aplicaciones de las bases de datos  

El uso de las bases de datos en la actualidad está tan extendido que es muy difícil encontrar un área en el que no influyan de una forma y otra, desde entornos empresariales donde sirven para manejar datos, carteras de clientes, cadenas de suministro o información relevante para la estructura de una empresa; hasta nuestro propio ocio, por ejemplo plataformas de video on demand o streaming necesitan de bases de datos para organizar los datos de los usuarios, contraseñas, listas de visionado, etc. 
En el sector de E-commerce son fundamentales, se utilizan para gestionan catálogos de productos, pedidos, y datos de clientes, permitiendo un funcionamiento eficiente de las tiendas en línea.
En las redes sociales almacenan información de usuarios, relaciones, publicaciones y comentarios, facilitando la interacción entre usuarios.
En los sistemas bancarios son críticas, ya que manejan transacciones, cuentas y datos de clientes, asegurando la integridad y la seguridad de la información.
Por último, en el ámbito sanitario se utilizan para gestionar registros de pacientes, citas y datos clínicos, mejorando la atención médica.

## Tendencias futuras

Las tendencias futuras en el campo de las bases de datos incluyen un aumento en el uso de bases de datos en la nube, que como ya hemos dicho ofrecen mucha flexibilidad y permiten la escalabilidad sin necesidad de infraestructura física. Además, se prevé un mayor uso de bases de datos distribuidas, que permiten almacenar datos en múltiples ubicaciones, mejorando la disponibilidad y resiliencia. La integración de inteligencia artificial se volverá más común, con el objetivo de optimizar la gestión de datos, mejorar las consultas y facilitar el análisis predictivo.
Por último, la automatización en la administración de bases de datos se intensificará, utilizando algoritmos para optimizar el rendimiento y la seguridad, reflejando así la continua evolución de las bases de datos para satisfacer las crecientes demandas de procesamiento de datos en el mundo actual.
Para acabar, la IA y el aprendizaje automático (machine learning) permiten realizar análisis profundos y automatizados, identificando patrones en grandes volúmenes de datos y mejorando la toma de decisiones. Con el auge del big data, tecnologías como NoSQL y bases de datos distribuidas son utilizadas para manejar datos no estructurados y procesarlos en tiempo real. 
Además, la incorporación de análisis predictivo permite anticipar resultados basados en datos históricos, mientras que la automatización optimiza la gestión de bases de datos, reduciendo costos y errores. En conjunto, estas innovaciones crean un ecosistema más inteligente y adaptable, potenciando el valor estratégico de los datos para las organizaciones.
