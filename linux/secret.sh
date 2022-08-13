#!/bin/

echo "welcome to secret Agent Application"
echo "==================================="
read -p "Enter Your Name :" Name 
read -p "Enter Your favourite Actor :" Actor
read -p "Enter Your Lucky Number :" lucky
read -p "Enter Your favourite Dish :" dish
first_char_name=$(echo -n $Name | cut -c 1)
len=$(echo -n $Actor | wc -c)
last_char_actor=$(echo -n $Actor | cut -c $len)
no_