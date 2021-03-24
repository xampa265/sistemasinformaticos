echo " script para introducir 2 valores y comprobar cual es el mayor";
echo " ------------------------------------------------------------"
echo " "

read -p "Introduce valor 1: " valor1

read -p "Introduce valor 2: " valor2

if [ $valor1 -eq $valor2  ]; then
	echo "Son valores iguales";
else if [ $valor1 -gt $valor2 ];

 then
	echo "El primer valor es mayor";

else echo "El segundo es mayor";

fi
fi


