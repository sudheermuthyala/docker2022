#!/bin/bash 

echo "welcome to secret Agent Application"
echo "==================================="
read -p "Enter Your Name :" Name 
read -p "Enter Your favourite Actor :" Actor
read -p "Enter Your Lucky Number :" lucky
read -p "Enter Your favourite Dish :" dish
first_char_name=$(echo -n $Name | cut -c 1)
le