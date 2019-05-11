#!/usr/bin/awk -f


BEGIN{

FS="-"

print "Enter the date:"

getline < "/dev/tty"

flag=1;

if((($3%4!=0) && ($2==2) && ($1>28)) || (($3%4==0) && ($2==2) && ($1>29)) || $2 > 12)

    flag=0;

if(flag==0)

        print"Invalid date."

else

{

         if($2==1)

                temp="January";

         else if($2==2)

                temp="February";

         else if($2==3)

                temp="March";

         else if($2==4)

                temp="April";

         else if($2==5)

                temp="May";

         else if($2==6)

                temp="June";

         else if($2==7)

                temp="July";

         else if($2==8)

                temp="August";

         else if($2==9)

                temp="September";

         else if($2==10)

                temp="October";

         else if($2==11)

                temp="November";

         else

                temp="December";

print "The date is " $1 " Month is " temp " Year is " $3

}

}

