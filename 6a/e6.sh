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
	echo "El valor total del agua es a 20 €  ";
	
	
else if [ $valor1 -le 200 ];  then 
	let resta=$valor1-50;
	echo "El valor total del agua es:";	
	echo "scale=2;($resta*$valoragua1)+20"|bc -l;	


else if [ $valor1 -gt 200 ];  then 
	let resta=$valor1-200;
	let valor2=150*$valoragua2;
	
	echo "El valor total del agua es : ";
	echo "scale=2;($resta*$valoragua1)+20+$valor2 | bc -l;	


fi
fi
fi

