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
SYM=0
BS=`grep -o ' ' $1 | wc -l`
CHA=`wc -c $1 | awk '{print $1}'`
V=0
L=`wc -l $1 | awk '{print $1}'`
while read -n1 c
do
	if [[ $c == *['!'@#\$%^\&*()_+]*  ]]
	then
		((SYM++))
	elif [[ $c == *[aAeEiIoOuU]*  ]]
	then
		((V++))
	fi
done < "$1"
echo "The number of lines are: $L"
echo "The number of vowels are: $V"
echo "The number of characters are: $CHA"
echo "The number of spaces are: $BS"
echo "The number of symbols are: $SYM"


