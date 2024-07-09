#!/bin/bash

#array declaration and initialization.
arr=(1 2 3 4 5)

#prints the first element of the array
echo $arr

echo ${arr[0]}

arr[0]="one"

echo $arr

#print element at a particular index.
index=4

echo ${arr[$index]}

#print all the values in an array.
echo ${arr[*]}
#or
echo ${arr[@]}

#print the length of the array.
echo ${#arr[@]} # or echo ${#arr[*]}

#associative arrays.
#===================
echo "Associative Arrays"

#declaration of asspciative arrays.
declare -A assoc_arr

#Insertion of values in associative arrays.
assoc_arr=(["name"]="John" ["age"]=25 ["city"]="New York")
#or
assoc_arr["ph"]="1234567890"

#prints all the values of the array.
echo ${assoc_arr[*]}

echo ${assoc_arr["ph"]}

#to prints the index key of the array.
echo ${!assoc_arr[@]}
