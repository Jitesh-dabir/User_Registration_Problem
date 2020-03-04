#!/bin/bash -x

echo ".......................................Welcome to User Registration Problem........................................"

#FUNCTION TO VALID FIRST NAME
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

#FUNCTION TO VALID FIRST NAME AND LAST NAME
function lastName(){
	local pattern="^[A-Z]{1}[a-z]{2,}[ ][A-Z]{1}[a-z]{2,}$"
	read -p "Enter first name and last name:" name
	if [[ $name =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi 
}
#FUNCTION TO VALID EMAIL ADDRESS
function validEmail(){
	local pattern="^[a-z]+[0-9]*+@[a-z]+.[a-z]{0,4}?[a-z]{0,4}.[a-z]{1,4}$"
	read -p "Enter email address:" email
	if [[ $email =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
#FUNCTION TO VALID PRE-DEFINED MOBILE FORMAT
function validMobile(){
	local pattern="^[0-9]{2}[ ][0-9]{10}"
	read -p "Enter mobile number:" mobileNumber
	if [[ $mobileNumber =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
function validPassword(){
	local pattern="^[a-zA-Z0-9]{8,}"
	read -p "Enter password:" password
	if [[ $password =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi

}
firstName
lastName
validEmail
validMobile
validPassword
