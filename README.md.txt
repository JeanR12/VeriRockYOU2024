Buscador de Contraseñas en rockyou2024
Este proyecto te permite encontrar contraseñas en un archivo de diccionario llamado rockyou2024.txt. Utiliza scripts de shell para buscar contraseñas específicas en el archivo y notificarte si la contraseña se encuentra o no.

Introducción
El archivo rockyou2024.txt es un diccionario popular que contiene una lista extensa de contraseñas comunes. Este proyecto tiene tres scripts de shell que te ayudarán a buscar una contraseña en ese archivo de manera sencilla. Cada script tiene un enfoque ligeramente diferente para buscar la contraseña. A continuación, te mostramos cómo utilizar cada uno de los scripts.

Scripts
1. Buscador Básico
Este script permite buscar una contraseña exacta en el archivo rockyou2024.txt.

sh
Copiar código
read -P "Escribe la contraseña que quieres encontrar: " pass
strings rockyou2024.txt | grep -m 1 -w "^$pass$"
if [ $? -eq 0 ]; then
        echo "Uy viejo, paila $pass esta en el rockyou2024"
else 
        echo "Buenisimo pa, tenes una contraseña re mela"
fi
Explicación:

read -P "Escribe la contraseña que quieres encontrar: " pass: Solicita al usuario que ingrese la contraseña que desea buscar.
strings rockyou2024.txt | grep -m 1 -w "^$pass$": Busca la contraseña exacta en el archivo rockyou2024.txt.
if [ $? -eq 0 ]; then ... else ... fi: Verifica si la contraseña fue encontrada y muestra un mensaje adecuado.
2. Buscador con Mensaje de Éxito
Este script es similar al anterior, pero con un mensaje diferente para indicar si la contraseña fue encontrada.

sh
Copiar código
read -P "Escribe la contraseña que quieres encontrar: " pass
strings rockyou2024.txt | grep -m 1 -w "$pass"
if [ $? -eq 0 ]; then
        echo "Se ha encontrado tu contraseña $pass en el rockyou2024"
else 
        echo "En hora buena pa, tenes una contraseña chingona"
fi
Explicación:

read -P "Escribe la contraseña que quieres encontrar: " pass: Solicita la contraseña al usuario.
strings rockyou2024.txt | grep -m 1 -w "$pass": Busca la contraseña en el archivo sin necesidad de coincidir con el inicio y final exacto de la línea.
if [ $? -eq 0 ]; then ... else ... fi: Muestra un mensaje indicando si la contraseña fue encontrada.
3. Buscador con Patrón
Este script busca la contraseña en el archivo y muestra un mensaje si la contraseña es encontrada.

sh
Copiar código
read -P "Escribe la contraseña que quieres encontrar: " pass
patron=$(strings rockyou2024.txt | grep "$pass")

if [ $? -eq 0 ]; then
        echo "Se ha encontrado tu contraseña $pass en el rockyou2024"
else 
        echo "En hora buena pa, tenes una contraseña chingona"
fi
Explicación:

read -P "Escribe la contraseña que quieres encontrar: " pass: Solicita al usuario la contraseña.
patron=$(strings rockyou2024.txt | grep "$pass"): Busca la contraseña en el archivo y guarda el resultado en la variable patron.
if [ $? -eq 0 ]; then ... else ... fi: Verifica si el patrón fue encontrado y muestra un mensaje adecuado.
Uso
Asegúrate de tener el archivo rockyou2024.txt en el mismo directorio que los scripts.

Abre una terminal y navega al directorio donde están los scripts.

Ejecuta el script deseado usando el siguiente comando:

sh
Copiar código
sh nombre_del_script.sh
Sigue las instrucciones en pantalla para ingresar la contraseña que quieres buscar.

Requisitos
Un sistema Unix/Linux.
El archivo rockyou2024.txt con las contraseñas.
Contribuciones
Si deseas mejorar este proyecto o agregar nuevas funcionalidades, siéntete libre de hacer un pull request o enviar una propuesta.

Licencia
Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.

