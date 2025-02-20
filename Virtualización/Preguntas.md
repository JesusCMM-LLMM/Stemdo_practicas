# Preguntas Virtualización

# 1. ¿Qué es un hipervisor?

Un hipervisor es un software, firmware o hardware que crea y gestiona máquinas virtuales. Permite que múltiples sistemas operativos se ejecuten simultáneamente en un solo hardware físico, aislando y asignando los recursos y el funcionamiento de cada máquina virtual. Esto nos permite tener un entorno seguro de pruebas en cada sistema operativo virtualizado.

# 2. Explica su función en la virtualización.

La función principal del hipervisor en la virtualización es abstraer los recursos físicos del hardware, lo que permite que dichos sistemas operativos se ejecuten en paralelo en máquinas virtuales. Esto optimiza el uso de recursos, mejora la flexibilidad y facilita la administración de servidores y entornos de desarrollo.

# 3. Diferencia entre Hipervisor Tipo 1 y Hipervisor Tipo 2.

Hipervisor Tipo 1: También conocido como "bare-metal", se ejecuta directamente sobre el hardware del servidor. Ejemplos incluyen Proxmox, que hemos usado ampliamente durante el curso, y también VMware ESXi y Microsoft Hyper-V. Ofrece un rendimiento superior y es más eficiente en el uso de recursos.
Hipervisor Tipo 2: Se ejecuta sobre un sistema operativo host, lo que significa que depende de este sistema para funcionar. Ejemplos son VMware Workstation y Oracle VirtualBox. Generalmente es más fácil de instalar y usar, pero puede ser menos eficiente.

# 4. ¿Qué es un Sistema Operativo y dónde está instalado?

Un sistema operativo es un software fundamental que gestiona el hardware y el software de un dispositivo, proporciona una interfaz entre el usuario y el hardware, y es, digamos, el nexo de unión entre ambos. Un sistema operativo puede instalarse en cualquier dispositivo de almacenamiento, desde discos duros hasta memorias flash, siempre que tengan conexión con el dispositivo en el que se quiera instalar. 

# 5. Define qué es un sistema operativo.

Un sistema operativo es un conjunto de programas que controla y coordina el uso del hardware del computador, gestiona recursos, proporciona servicios a las aplicaciones y permite la interacción del usuario con el sistema. Todos los dispositivos de uso cotidiano, desde ordenadores hasta algunos electrodomésticos, tienen un sistema operativo instalado.  

# 6. Explica en qué dispositivos se puede instalar.

Los sistemas operativos se pueden instalar en una variedad de dispositivos, tales como:  

Computadoras personales (PCs y laptops)  
Servidores  
Dispositivos móviles (smartphones y tablets)  
Dispositivos embebidos (como routers y electrodomésticos inteligentes)  
Máquinas virtuales  
Videoconsolas, incluso las más básicas.

# 7. ¿Qué significa LTS?

LTS significa "Long Term Support" (Soporte a Largo Plazo). Se refiere a versiones de software, especialmente sistemas operativos, que recibirán actualizaciones y soporte durante un periodo extendido, generalmente varios años.

# 8. Explica la diferencia entre versiones LTS y versiones regulares de un sistema operativo.

Las versiones LTS ofrecen soporte y actualizaciones de seguridad por un tiempo prolongado (a menudo de 3 a 5 años), lo que las hace ideales para entornos empresariales y sistemas críticos; esto implica un algo grado de fiabilidad y de comodidad, al no tener que actualizar los equipos de un entorno por completo cada poco tiempo. Por otro lado, las versiones regulares suelen tener un ciclo de vida más corto y pueden incluir nuevas características más rápidamente, pero también pueden ser menos estables. Las versiones regulares suelen recibir actualizaciones más frecuentes, pero pueden no ser adecuadas para todos los usuarios, especialmente en entornos donde la estabilidad es clave.
