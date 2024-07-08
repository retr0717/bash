#!/bin/bash

a=10
b=20
let s=a+b # not s=$a+$b ( let is equivalent to $)
echo $s

let s++ # increment s by 1
let s+=10 # increment s by 10

let s-- # decrement s by 1
let s-=5 # decrement s by 10

echo $s

result=$[a+b] # not result=$[$a+$b] ( $[] is equivalent to $)
echo $result

r=$[b + 5] # $[$b+5] is also correct
echo $r

y=$((a+5)) # $(($a+5)) is also correct
echo $y

#bc precision calculator
echo "$a * 0.5" | bc

#scale in bc to print definite digits after decimal point.
echo "scale=3; $a * 0.25" | bc

#base conversion using bc
echo "obase=2; $a" | bc
echo "obase=8; $a" | bc
echo "obase=16; $a" | bc
