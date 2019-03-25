if [[ $# -eq 0 ]]
then
	echo "No file specified as an argument"
	exit
fi
for file in $*
do
	if [[ !(-a $file) ]]
	then
		echo "Enter a valid files as arguments"
		exit
	fi
done
for file in $*
do
	NAME=`basename $file`
	PERMS=`ls -lah $file | awk -F " " '{print $1}'`
	SIZE=`ls -lah $file | awk -F " " '{print $5}'`
	DATE=`ls -lah $file | awk -F " " '{print $6 " " $7 " " $8 }'`

	printf "The name of file is: $NAME\nThe last modified date is: $DATE"
	printf "\nThe permissions are: $PERMS\nThe size is: $SIZE\n\n"

done
