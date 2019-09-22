#!/bin/bash
# Authors : Raya
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#prompting to enter the filename
echo "enter the file name"
read filename #input filename

#prompting to enter the regex
echo "enter a regular expression"
read regex #input regex

#use grep to look for regex pattern in filename
grep $regex $filename 

#find all phone numbers that share format 000-000-0000. the ^ means it starts with, the $ means it ends there i.e there is nothing after it
egrep -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" $filename 

#find all emails that have format L@A.xxx where L is a sequence of letters, numbers, or . or - and A is the same too. 
egrep -c "^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{3}$" $filename

#find all numbers that start with 303
egrep -o "^303-[0-9]{3}-[0-9]{4}$" $filename

#store all emails in text file email_results.txt
grep "geocities.com" $filename >> email_results.txt

