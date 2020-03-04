#!/bin/bash -x

echo ".......................................Welcome to User Registration Problem........................................"

#FUNCTION TO VALID FIRST NAME(FIRST LETTER CAPITAL AND MIN 3 CHARACTER)
function firstName(){
	local pattern="^[A-Z]{1}[a-z]{2,}$"
	read -p "Enter first name:" name
	if [[ $name =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi 
}

#FUNCTION TO VALID FIRST NAME AND LAST NAME(FIRST LETTER CAPITAL AND MIN 3 CHARACTER)
function lastName(){
   local pattern="^[A-Z]{1}[a-z]{2,}( )[A-Z]{1}[a-z]{2,}$"
   read -p "Enter first name and last name:" name
   if [[ $name =~ $pattern ]]
   then
      echo "Valid"
   else
      echo "Invalid"
   fi 
}

firstName
lastName
