ls -lAh $PWD | awk -F " " '{print $1 " " $9}' > b.temp
while read l
do
	PERM=`echo $l | awk '{print $1}'`
	USRPERM=${PERM:7:3}
	if [[ $USRPERM == "rwx"  ]]
	then
		echo "$l"
	fi
done < b.temp
rm b.temp

