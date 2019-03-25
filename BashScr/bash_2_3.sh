if [[ $# -ne 2 ]]
then
    	echo "Enter two files as argument"
        exit
fi

if [[ !(-a $1 && -a $2) ]]
then
    	echo "Enter valid files"
        exit
fi

PERMS1=`ls -lah $1 | awk -F " " '{print $1}'`
PERMS2=`ls -lah $2 | awk -F " " '{print $1}'`

if [[ $PERMS1 == $PERMS2  ]]
then
	echo "The common permission is: $PERMS1"
else
	echo "The permission for $1 is: $PERMS1"
	echo "The permission for $2 is: $PERMS2"
fi
