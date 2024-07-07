#!/bin/bash

echo hello
echo "hello"
echo 'hello'

#special character priting
echo hello !
echo "hello \!"

#printf
printf "hello"

echo hello
hello

printf "%-5s %-10s %-4s\n" No Name Mark
printf "%-5s %10s %-4.2f\n" 1 Sarath 80.3456 # a length of 10 spaces are allowed to print the string from the left.
printf "%-5s %-10s %-4.2f\n" 2 James 90.99891
printf "%-5s %-10s %-4.2f\n" 3 Jeff 77.564

#colored printing
echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;35m This is magenta text"
echo -e " This is green text \e[0m"
echo -e "\e[1;32m This is red text \e[0m"
