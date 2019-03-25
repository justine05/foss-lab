if [[ $# -ne 1 ]]
then
	echo "No file specified as an argument"
	exit
fi

if [[ !(-a $1) ]]
then
	echo "Enter a valid file as an argument"
	exit
fi

PERMS=`ls -lah $1 | awk -F " " '{print $1}'`;
SIZE=`ls -lah $1 | awk -F " " '{print $5}'`;
NAME=`ls -lah $1 | awk -F " " '{print $9}'`;
DATE=`ls -lah $1 | awk -F " " '{print $6 "\ " $7 "\ " $8 }'`;

printf "The permissions are: $PERMS\nThe size is: $SIZE\n"
printf "The name of file is: $NAME\nThe last modified date is: $DATE"
