# Prinf file to CLI
cat <file-name>

# Prinf file to CLI in REVERSE
tac <file-name>

##########################################

# Prinf the last 10 lines of a file to CLI
tail <file-name>

# Prinf the last 20 lines of a file to CLI
tail -n 20 <file-name>

##########################################

# Prinf the first 10 lines of a file to CLI
head <file-name>

# Prinf the first 20 lines of a file to CLI
head -n 20 <file-name>

##########################################

# Search and replace all text occurances in a file
#  s - stands for search and replace
#  g - stands for global (without the 'g' only the first occurance will be replaced)
#  This command is for just look what the outcome will be
sed 's/<text-to-search>/<text-to-be-replaced-with>/g <file>'

# Use the '-i' flag for replace in place of the file
sed -i 's/<text-to-search>/<text-to-be-replaced-with>/g <file>'

##########################################

# extract the first column of a file
#  -d - stands for deleimiter
#  -f - stands for which field
cut -d ' ' -f 1 <file>

cut d ',' -f 3 <file>

##########################################


# omit duplicates lines which are one after another
# Example
# usa
# usa
# usa               usa
# canada    ===>>   canda
# canada            usa
# usa
uniq <filename>

# used with the sort comand
sort <file-name> | uniq


diff file1 file2

# diff between files using 'c' - for context
diff -c file1 file2

# diff between files side by side
diff -y file1 file2
sdiff file1 file2

















