sudo vim /etc/security/limits.conf

# <domain>      <type>  <item>         <value>
#*               soft    core            0
#root            hard    core            100000
#@student        hard    nproc           20
#ftp             hard    nproc           0

# Explanation
##############
# <domain> column
# 1) @ - indicates group limit
# 2) * - indicates default limit for all
# 3) no prefix such as '@' or '*' - indicates user limit

# <type> column
# 1) hard - indicates hard limit - max value for a resource a user can use
# 2) soft - indicates soft limit - init value for a resource a user can use
# 3) '-'  - indicates hard & soft limits

# <item> column
# 1) nproc  - indicates number of processes in a session
# 2) fsize  - indicates file size a user can allocate in his session (KB units)
# 3) cpu    - indicates cpu time a user can have in his session (units %)


# see more types enter the following
man limits.conf

# see user limits
ulimit -a

# set user max processes
ulimit -u 5000
