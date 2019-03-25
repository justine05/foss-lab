if [[ $# -ne 2 ]]
then
    	echo "Enter two files as argument"
        exit
fi

if [[ !(-f $2 && -f $2) ]]
then
    	echo "Enter valid files"
        exit
fi

(cmp -s $1 $2) && (rm $2; echo "Deleted repeated file") || (echo "Different files...not deleted")

