# 1. Dar una ventaja y una desventaja de cada topologia que hemos visto.

| Topología          | Ventaja          | Desventaja       |
| -------------      | -------------    | ---------------  |
| Punto a punto      | Simpleza, ya que un nodo solo se conecta al adyacente, lo cual hace que sea más fácil detectar problemas.                 | No es fácil de ampliar si se necesitan más nodos.                 |
| En bus             | Muy fácil de instalar y ampliar.                 | Si surge un problema en un cable o una conexión hace que toda la red pueda caerse, o al menos la porción a partir del fallo o ruptura.     |
| Anillo             | Es muy constante, ya que cada nodo tiene el mismo acceso al medio de transmisión.                 | La información tiene que recorrer mucho espacio si el nodo de destino está en un punto alejado del de inicio.                 |
| Estrella           | Fácil escalabilidad.                 | Depende del nodo central; si este se cae, la red se cae.                 |
| Árbol              | Permite jerarquizar las conexiones.                | Si se cae un nodo crítico, grupos de nodos que dependan de éste pueden quedar inutilizados.                 |
| En malla           | Su rendimiento es muy eficiente.                 | Es difícil y costosa de implementar.                  |
| Totalmente conexa  | La conexión a todos los nodos hace que sea muy fiable.                 | Es muy compleja de ampliar, porque a más nodos, más conexiones hay que establecer.                 |
| Híbrida            | Al combinar diferentes tipos de topología, es muy adaptable.                 | También, al tener diferentes tipos de topologías, puede ser difícil de gestionar.                  |


# 2 .Analizar la red de vuestra oficina y justificar que topología es.

Por lo que he podido ver en la oficina de Stemdo, no tengo claro el tipo de topología exacta es, pero me decanto por dos tipos: 

## 1. Topología en estrella

Como he podido comprobar en el día a día, nuestros equipos se conectan al wifi de la empresa de forma independiente, y no existe una conexión entre ellos; por lo tanto creo que este tipo de conexión podría ser la más probable. De este modo, en la oficina estará un punto de acceso y los ordenadores de cada empleado se conectan a él (pensemos en un router que da acceso a múltiples ordenadores, básicamente). De este modo, si un ordenador se ve comprometido o da fallos, no afectará al resto que podrán seguir su actividad normalmente. Mi suposición es que realmente cada departamento tendrá su propia topología de estrella, para una compartimentación más eficiente y un aumento en la seguridad. 

## 2. Topología híbrida

A raíz de lo dicho al final del punto anterior, también pienso que la topología podría ser híbrida, me explico: los departamentos están conectados en estrella, cada nodo siendo independiente entre sí pero conectados a un nodo central; y cada nodo central está conectado a otros nodos que monitorizan su correcto funcionamiento. Me imagino una estructura como ésta, pero no tan simplificada  

![image](https://github.com/user-attachments/assets/ea356f39-b6d0-40f0-b53c-85b11381e6cf)

Mezclando elementos de la topología bus con la topología en estrella. 

