#!/bin/bash
# echo "Please enter your name: "
# name=0
# read name
# echo -e "Hello $name!\n"
myFile1="1.txt"
myFile2="1.txt"
if [ -e ${myFile1} ]; then echo "${myFile1} exists $?"; fi
if [ -r ${myFile1} ]; then echo "${myFile1} exists and reading is granted $?"; fi
if [ -w ${myFile1} ]; then echo "${myFile1} exists and writing is granted $?"; fi
if [ ! -x ${myFile1} ]; then echo "${myFile1} exists and execute is NOT granted $?"; fi
if [ ${myFile1} = ${myFile2} ]; then echo "${myFile1} = ${myFile1} $?"; fi
if [ "str2" = "str2" ]; then echo "str2 = str2 $?"; fi
if [ 5 -eq 5 ]; then echo "5 = 5 $?"; fi
if [ 6 -gt 5 ]; then echo "6 > 5 $?"; fi

# ![expression]   # The expression is FALSE
# -n [string]			# string.length > 0
# -z [string]			# string.length = 0
# string1 = string2 # String1 is equal string2
# string1 != string2 # String1 is equal string2
# integer1 -eq integer2
# integer1 -gt integer2
# integer1 -lt integer2
# -d [file] 						# file exists and it is a directory
# -e [file]							# file exists
# -r [file]							# file exists and reading is granted
# -s [file]							# file exists and its size > 0
# -w [file]							# file exists and writeing is granted
# -x [file]							# file exists and execute is granted



for i in {1..20}; do
    echo $i;
done


for f in $(ls); do
    echo $f;
done