ruta1=`pwd`

cd $1;

ruta2=`pwd`

if [ $ruta1 = $ruta2 ]; then
	echo "ruta no encontrada"
else

	ls *.txt >>ficheros.txt;

	contador=0;
	maxlineas=`cat ficheros.txt | wc -l`

	linea=1;

	while [ $linea -le $maxlineas ]; do
		i=`cat ficheros.txt | head -$linea | tail -1`
		let contador=$contador+1;	
 		rm $i
		linea=$(($linea+1))
		
	done 
	echo "se han borrado $contador ficheros txt" 
	rm ficheros.txt
fi
