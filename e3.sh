
echo " script para mostrar calificacion";
echo " ------------------------------------------------------------"
echo " "
patron='^[0-9]+$'
while :
do
	read -p "Introduce un numero mayor que 0 y menor que 10: " valor1
		if [[ $valor1 =~ $patron ]];then
			if [ $valor1 -eq 0 ] || [ $valor1 -le 10 ];then
				echo "$valor1 es número valido"
				break
			fi					
		else
			echo "$valor1 no es un numero o no esta entre 0 y 10"
		fi
done


if [ $valor1 -le 4 ]; 
	then echo "Suspendido";

else if [ $valor1 -eq 5 ]; 

	then echo "Aprobado";

else if [ $valor1 -eq 6 ]; 
	
 then echo "Bien";


else if [ $valor1 -eq 7 ];

	then echo "Notable";

else if [ $valor1 -eq 8 ]; 
	
	then echo "Notable";

else if [ $valor1 -ge 9 ]; 
	
	then echo "Sobresaliente";
fi
fi
fi
fi
fi
fi

