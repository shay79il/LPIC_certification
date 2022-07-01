
# search text in file case sensitive
grep 'ubuntu' /etc/os-release
grep 'Ubuntu' /etc/os-release

# search text in file case insensitive
grep -i 'ubuntu' /etc/os-release

# search text in file invert-match
grep -vi 'ubuntu' /etc/os-release

# search WHOLE word text in file
grep -w 'ubuntu' /etc/os-release

# search WHOLE word text in file with REGEX (-E)
grep -Ew '[A-Z][a-z]{2}' /etc/os-release

# search text in file recursively
grep -r 'ubuntu' /etc


########
# REGEX
########

# Print all lines which NOT begins with '#'
# ^ - Begin with
# v - for invert
cat /etc/login.defs | grep -v '^#'

# Print all lines which ENDs with '7'
# $ - Ends with
grep '7$' /etc/login.defs


# Print all lines which contains the text 'c' + 'any ONE char' + 't'
# . - ONE char
grep 'c.t' /etc/manpath.config

# Print all lines which contains the text 'c' + 'any ONE char' + 't'
# BUT in ONE WHOLE word
# . - ONE char
grep -w 'c.t' /etc/manpath.config

# Print all lines which contains SPECIAL char like '.'
grep '\.' /etc/login.defs

# Print all lines which contains text with
# 'l' + 'e' + 0 or more of 't'
# '*' - Match The Previous Element 0 Or More Times
grep 'let*' /etc/pnm2ppa.conf

# Print all lines which contains text with
# '/' + 0 or more of 'any ONE char' + '/'
grep '/.*/' /etc/pnm2ppa.conf

# Print all lines which contains text with 1 or more of '0'
grep -E '0+' /etc/pnm2ppa.conf
grep '0\+' /etc/pnm2ppa.conf

# {1,3} will match 1 to 3.
# {3} will match exactly 3.
# {3,} will match 3 or more.
# {,3} will match 3 or less.
# {} - Matches the specified quantity of the previous token.
grep -E '10{3,}' /etc/pnm2ppa.conf

# ? - Make The Previous Element Optional
grep -E '#topmargin?' /etc/pnm2ppa.conf

# | - Match One Thing Or The Other
grep -E 'disable|enabled' /etc/pnm2ppa.conf

# [] - Ranges Or Sets
grep -E 'c[a-z]*on' /etc/pnm2ppa.conf

# () - Subexpressions

# [^] - Negated Ranges Or Sets
grep -E '/[^a-z]' /etc/pnm2ppa.conf










