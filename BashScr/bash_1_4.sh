if [[ $# -ne 2 ]]
then
echo "Invalid number of arguments"
exit
fi

if [[ ! (-a $1) ]]
then
echo "Not a valid file location or file dosent exist"
exit
fi
NO=$(grep -c -e $2 $1)
if [[ $NO -eq 0 ]]
then
echo $2 >> $1
echo "Username is added"
exit
else
echo "Username already exists"
exit
fi

