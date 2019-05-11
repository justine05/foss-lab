#!/usr/bin/awk -f


BEGIN{

    print "Enter the Basic Salary :";

    getline < "/dev/tty";

    if($0<10000){

        d = 45/100 * 0;

        game = 15/100 * $ 0;

    }


    else{

        d = 50/100 * 0;

        game = 20/100 * $ 0;

    }


    gsal = $ 0 + da + game;

    print "Gross Salary = " gsal

}


