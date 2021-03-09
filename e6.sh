echo " script para calcular el valor del agua";
echo " ------------------------------------------------------------"
echo " "



patron='^[0-9]+$'
while :
do
read -p "Introduce un numero: " valor1
	if [[ $valor1 =~ $patron ]];then
		if [ $valor1 -gt 0 ] ; then
		echo "$valor1 es número valido"
		break
		fi
	else
	echo "$valor1 no es un numero"
	fi
done

suma=0;
valoragua1=20/100;
valoragua2=10/100;
if [ $valor1 -le 50 ]; then 

	let suma=$valor1*20;
	echo "El valor total del agua es a 20 € el litro: ";
	echo $suma;

else if [ $valor1 -le 200 ];  then 
	let suma=$valor1*$valoragua1;
	echo "El valor total del agua es a 0.20 € el litro: ";
	echo $suma;

else if [ $valor1 -gt 200 ];  then 
	let suma=$valor1*$valoragua2;
	echo "El valor total del agua es a 0.10 € el litro: ";
	echo $suma;


fi
fi
fi

