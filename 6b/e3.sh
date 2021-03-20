
maxlineas=`cat precipitaciones.txt | wc -l`

linea=1;
echo "No llovió el :"
while [ $linea -le $maxlineas ]; do

 i=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $2}'`

	
	if [ $i -eq 0 ]; then 
	
		if [ $linea -gt 7 ]; then 
			let resto=$linea%7;
		else
			let resto=$linea;
		fi

		
		if [ $resto -eq 1 ]; then echo " Lunes";
		elif [ $resto -eq 2 ]; then echo "Martes";
		elif [ $resto -eq 3 ]; then echo "Miercoles";
		elif [ $resto -eq 4 ]; then echo "Jueves";
		elif [ $resto -eq 5 ]; then echo "Viernes";
		elif [ $resto -eq 6 ]; then echo "Sabado";
		elif [ $resto -eq 0 ] || [ $resto -eq 7 ]; then echo " Domingo";
		fi
	

	fi


	linea=$(($linea+1))

done

