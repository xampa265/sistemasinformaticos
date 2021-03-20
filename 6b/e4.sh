
sumapares=0;
sumaimpares=0;
for i in $(cat numeros.txt);do
	let resto=$i%2

	if [ $resto -eq  0 ]; then 
		pares="$pares $i"
		let sumapares=$sumapares+$i;
	else 
		impares="$impares $i"
		let sumaimpares=$sumaimpares+$i;
 	
	fi
done 
echo "Estos son los numeros pares: " $pares;
echo "La suma de los pares es :" $sumapares;
echo "Estos son los numeros impares: " $impares;
echo "La suma de los impares es :" $sumaimpares;
