#!/usr/bin/awk -f


{

  arr[$1]+=$2;

  total+=$2;

}


END{

    for (i in arr){

        print i " = " arr[i];

    }

    print "Total = " total

}