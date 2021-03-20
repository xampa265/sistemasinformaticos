echo " script para que muestre la suma de valores hasta que se introduzca 0";
echo "-----------------------------------------------------------------------"
echo " "

read -p "Introduce un numero mayor que 0: " valor1
let suma=0+$valor1;
contador=0;

while [ $valor1 -ne 0 ] ; do
read -p "Introduce un numero: " valor1
let suma=$suma+$valor1;
let contador=$contador+1;
done

echo "La suma total es: "
echo $suma;
let media=$suma/$contador;
echo "la media es: "
echo $media;
