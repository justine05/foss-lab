if [[ $# -ne 2 ]]
then
	echo "Enter two directories as argument"
	exit
fi

if [[ !(-d $1 && -d $2) ]]
then
	echo "Enter valid directories"
	exit
fi

NAME2=`basename $2`
diff $1 $2 | grep -w "$NAME2" | awk -F ": " '{print $2}' >> b.temp
while read line
do
	cp "$2/$line" $1
done < b.temp
rm b.temp

