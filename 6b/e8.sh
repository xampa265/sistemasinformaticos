for i in `seq 130 140`;do
	ping -c 1 192.168.1.$i >>ping.txt 

done
echo "Las ips que estan conectadas son:"

cat ping.txt | grep -a1 "1 received" | grep "192" | awk '{print $2}'



rm ping.txt


	

