
maxlineas=`cat listado.txt | wc -l`

linea=1;
usulinux=0;
usuwin=0;
prolinux=0;
prowin=0;
while [ $linea -le $maxlineas ]; do

	i=`cat listado.txt | head -$linea | tail -1 | awk '{print $2}'`
	j=`cat listado.txt | head -$linea | tail -1 | awk '{print $3}'`

	if [ $i = "Linux" ]; then
	
		let usulinux=$usulinux+1;
		let prolinux=$prolinux+$j;
	else  
		let usuwin=$usuwin+1;
		let prowin=$prowin+$j;


	fi

	linea=$(($linea+1))

done
echo "linux--> $usulinux $prolinux "
echo "Windows--> $usuwin $prowin "


