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

n=`wc -l $1 | cut -d " " -f 1`
i=1

while [ $i -le $n ]
do
    line=`sed -n "$i p" $1`
    cc=`echo $line | wc -c | cut -d " " -f 1`
    while [ $cc -ge 40 ]
    do
        ext=`echo $line | cut -c 41-`
        line=`echo $line | cut -c 1-40`
        echo "$line \\"
        line=$ext
        cc=`echo $ext | wc -c | cut -d " " -f 1`
    done
echo "$line"
i=`expr $i + 1`
done
