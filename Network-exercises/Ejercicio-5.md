# Analizar cada caso y decir qué protocolo es, investigar que protocolo es en caso de no conocerlo.

| #    |  Actividad   |  Protocolo   |
| ---- | ------------ | ------------ |
|  1   | Acceder a un sitio web seguro                                       |   HTTPS           | 
|  2   | Enviar un correo electrónico desde un cliente de correo             |   SMTP (se usa para enviar)                |
|  3   | Descargar un archivo desde un servidor                              |   FTP           |
|  4   | Resolver la dirección IP de un nombre de un dominio                 |   DNS           |
|  5   | Transferir archivos de forma segura entre servidores                |   SFTP           |
|  6   | Acceder de manera remota a la línea de comandos de un servidor      |   SSH           |
|  7   | Recibir correos electrónicos en un cliente de correo                |  POP3 O IMAP (se usan para recibirlos)     |
|  8   | Sincronización de tiempo en dispositivos en red                     |  NTP            |
|  9   | Establecer una videollamada entre dos dispositivos                  |  SIP            |
|  10  | Obtener una dirección IP automáticamente al conectarse a una red    |  DHCP            |

De esta lista, los que no conozco son: 

## NTP

Es un protocolo utilizado para sincronizar los relojes de los dispositivos en una red. Asegura que todos los dispositivos tengan la misma hora, lo que es fundamental para muchas aplicaciones, incluyendo sistemas de registro y seguridad. NTP funciona a través de una jerarquía de servidores de tiempo. Los servidores más cercanos a la fuente de tiempo (como relojes atómicos) son considerados de nivel 0. Los servidores que se sincronizan con estos son de nivel 1, y así sucesivamente. Los dispositivos pueden consultar varios servidores para obtener la hora más precisa.

## SIP

Es un protocolo de señalización utilizado para establecer, mantener y finalizar sesiones de comunicación en tiempo real, como llamadas de voz y videoconferencias.
Funciona permitiendo la negociación de parámetros de comunicación, como codecs de audio y video, direcciones IP y puertos. Utiliza un enfoque basado en solicitudes y respuestas, similar a HTTP. Un cliente SIP envía una solicitud (por ejemplo, INVITE) a un servidor o a otro cliente para iniciar una sesión.
