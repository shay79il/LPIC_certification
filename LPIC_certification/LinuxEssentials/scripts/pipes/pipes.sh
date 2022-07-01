#!/bin/bash

# search all lines in the file "american-english"
# which contains the word "Apple" in it
grep Apple american-english

# search all lines in the file "american-english"
# which STARTS with the letter "M" in it
grep -E ^M american-english
cat american-english | grep -E ^M

# Count how many words starts with "M" in a file / log etc...
cat american-english | grep -E ^M | wc -l

# Seperate a line with a delimiter
cat /etc/passwd | grep shay79il | cut -d: -f6


# Sort output
cat american-english | grep Ball > result.txt
cat american-english | grep Apple >> result.txt | sort > sorted.txt