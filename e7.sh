
echo " script para mostrar calificacion";

read -p "Introduce un numero mayor que 0  y menor que 30 : " valor1

patron='^[0-9]+$'
while :
do
	read -p "Introduce un numero mayor que 0 y menor que 31: " valor1
		if [[ $valor1 =~ $patron ]];then
			if [ $valor1 -eq 0 ] || [ $valor1 -le 30 ];then
				echo "$valor1 es número valido"
				break
			fi					
		else
			echo "$valor1 no es un numero o no esta entre 0 y 30"
		fi
done
e
if [ $valor1 -gt 7 ]; then 
	let resto=$valor1%7;
else
	let resto=$valor1;
fi


if [ $resto -eq 1 ]; then echo "Es lunes";
elif [ $resto -eq 2 ]; then echo "Es Martes";
elif [ $resto -eq 3 ]; then echo "Es Miercoles";
elif [ $resto -eq 4 ]; then echo "Es Jueves";
elif [ $resto -eq 5 ]; then echo "Es Viernes";
elif [ $resto -eq 6 ]; then echo "Es Sabado";
elif [ $resto -eq 0 ] || [ $resto -eq 7 ]; then echo "Es Domingo";

fi
