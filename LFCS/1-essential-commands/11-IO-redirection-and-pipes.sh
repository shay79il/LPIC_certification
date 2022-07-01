# redirect errors to /dev/null
grep -r '^The' /etc/ 1>output.txt 2>/dev/null

# redirect and append output to output.txt and errors to errors.txt
grep -r '^The' /etc/ 1>>output.txt 2>>errors.txt

# redirect ALL output (including ERRORs) to all_output.txt
grep -r '^The' /etc/ 1> all_output.txt 2>&1

# '<<' - heredoc - meaning till EOF string we can add whatever we want
# EOF - it's only a standard - we can use anything as "end of doc"
cat <<EOF | grep 'b' | tee b.txt
foo
bar
baz
EOF


# Calculator which get relevant  string
bc <<<(1+2)*3

#########################

grep -v '^#' /etc/login.defs | sort | column -t










