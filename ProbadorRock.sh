read -P "Escribe la contraseña que quieres encontrar: " pass
patron=$(strings rockyou2024.txt | grep "$pass")

if [ $? -eq 0 ]; then
        echo "Se ha encotrado tu contraseña $pass en el rockyou2024"
else 
        echo "En hora buena pa, tenes una contraseña chingona"
fi