
echo " script para saber si un numero es par o impar";
echo " ------------------------------------------------------------"
echo " "
patron='^[0-9]+$'
while :
do
	read -p "Introduce un numero mayor que 0: " valor1
		if [[ $valor1 =~ $patron ]];then
			echo "$valor1 es número valido"
			break
		
		else
			echo "$valor1 no es un numero"
		fi
done

let resto=$valor1%2

if [ $resto -eq  0 ]; then 
	echo "Es par";
else 
echo "Es impar";

fi




