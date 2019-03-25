if [ $# -eq 0 ]
then
	echo "Enter atleast one file"
exit
fi

echo "Enter word to be searched"
read word

for file in $*
do
	sed "/$word/d" $file > b.temp
	mv b.temp $file
done
