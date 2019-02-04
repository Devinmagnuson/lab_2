#!/bin/bash
# Authors : Devin Magnuson
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem
echo "Enter a regular expression: "
read rEx
echo "Enter a file name: "
read fName

phoneNumbers='[0-9]{3}-[0-9]{3}-[0-9]{4}'

echo "Total # of Phone Numbers: "
grep -E $phoneNumbers $fName | wc -l

grep -E '303-' $fName >> phone_results.txt


echo "Total # of Emails: "
grep -E '@' $fName | wc -l

grep -E '@geocities.com' $fName >> email_results.txt

grep -E $rEx $fName >> command_results.txt


