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

patron='^[0-9]+$'
while :
do
	read -p "Introduce una nota: " nota
		if [[ $nota =~ $patron ]];then
			if [ $nota -gt 0 ] || [ $nota -lt 11 ];then
				echo "$nota es número valido"
				break
			fi
		else
			echo "$nota no es un numero"
		fi
done
