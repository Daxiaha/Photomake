#!/bin/bash
function main(){
	printf "I have a number,but need you to guess:"
	read int
	if (( ${int} >0 ))
	then

		sleep 1s
		printf "emmm,${int}."
		sleep 1s
		printf "I like it"
		sleep 2s
		echo
		echo "Although we are different,but it's not importent,"
		sleep 1s
		echo "Right?"
		photo

	else
		error
	fi
}
function photo(){
		while (( $int > 0 ))
		do

		termux-camera-photo -c 0 ${int}.jpg
		let "int--"
		
		done
}
function error(){
		while (( 1 ))
		do	
			echo "-----------------------------------------------------"
			echo "    !!!:I don't like it!it must greater than 1!!!"
			echo -e "-----------------------------------------------------\n"
		done
}
main	
