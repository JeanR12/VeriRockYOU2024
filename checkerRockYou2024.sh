read -P "Escribe la contraseña que quieres encontrar: " pass
strings rockyou2024.txt | grep -m 1 -w "^$pass$"
if [ $? -eq 0 ]; then
        echo "Uy viejo, paila $pass esta en el rockyou2024"
else 
        echo "Buenisimo pa, tenes una contraseña re mela"
fi