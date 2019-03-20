bold=$(tput bold)
normal=$(tput sgr0)
echo
echo -e "${bold}MENU${normal}\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Modulus"
echo
printf "Choose operation: "
read opt
echo
if [ $opt>5 ]
then
echo "Invalid option"
exit
fi
printf "Enter First Number: "
read no1
printf "Enter Second Number: "
read no2
echo
case $opt in

1) printf "The sum is: "
   expr $no1 + $no2
   ;;
2) printf "The difference is: "
  expr $no1 - $no2
   ;;
3) printf "The result of multiplication is: "
   expr $no1 \* $no2
   ;;
4) printf "The result of division is : "
   bc <<< "scale=4; $no1 / $no2"
   ;;
5) printf "The result of modulo is: "
   expr $no1 % $no2
   ;;
esac

