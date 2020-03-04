#!/bin/bash -x

echo ".......................................Welcome to User Registration Problem........................................"

#FUNCTION TO VALID FIRST NAME(FIRST LETTER CAPITAL AND MIN 3 CHARACTER)
function firstName(){
	local pattern="^[A-Z]{1}[a-z]{2,}$"
	read -p "Enter First name:" name
	if [[ $name =~ $pattern ]]
	then
		echo "True"
	else
		echo "false"
	fi 
}

firstName
