echo "vamos a crear $1 directorios personales para cada usuario"

for i in $(cat nombres.txt);do
		
 	mkdir $i
	
done 

for i in $(cat nombres.txt);do
 	cd $i
	for i in `seq 1 $1`;do
		mkdir personal$i	
	done

	cd ..
	
done 






