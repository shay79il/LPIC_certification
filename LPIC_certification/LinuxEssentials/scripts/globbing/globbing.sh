#!/bin/bash

#  ls for all files which called file with another char total 5 chars
ls file?

#  ls for all files whichare 5 chars long
ls ?????

#  ls for all files whichare 5 chars long which ends with char "1"
ls ????1

# The following are the same
# ls all files starts with a uppercase char and 4 more char
ls [[:upper:]]????
ls [A-Z]????

# The following are the same
# ls all files starts with a lower char
ls [[:lower:]]*
ls [a-z]*

# The following are the same
# ls all files ends with 1 digit
ls *[[:digit:]]
ls *[0-9]


[[:alpha:]]
[[:alphanum:]]



