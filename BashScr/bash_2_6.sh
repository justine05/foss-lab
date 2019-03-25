if [[ $# -ne 1 ]]
then
    	echo "Enter file as argument"
        exit
fi

if [[ !(-a $1) ]]
then
    	echo "Enter valid file"
        exit
fi
awk '!a[$0]++' $1 >> b.temp
rm $1
mv b.temp $1

