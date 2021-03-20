echo " Script para que muestre una lista desde 0 hasta ese valor";
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

valor2=0;
valor3=1;
while [ $valor2 -lt $valor1 ] ; do
 let valor2=$valor2+$valor3;
echo $valor2;
done

