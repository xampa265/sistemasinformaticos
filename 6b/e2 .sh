
maxlineas=`cat precipitaciones.txt | wc -l`

linea=1;

while [ $linea -le $maxlineas ]; do

 i=`cat precipitaciones.txt | head -$linea | tail -1 | awk '{print $2}'`
let suma=$suma+$i;

	linea=$(($linea+1))

done

let media=$suma/$maxlineas;

echo "la media de precipitaciones es $media";
