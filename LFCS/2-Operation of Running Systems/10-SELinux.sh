ls -Z
# unconfined_u:object_r:user_home_t:s0 archive.tar.gz

# unconfined_u  :   object_r  :   user_home_t   :   s0
#     user            role          type           level

# SELinux User      Roles
# developer_u       developer_r, docker_r
# guest_u           guest_r
# root              staff_r, sysadm_r, system_r, unconfined_


# 1. Only certain users can enter certain roles and certain types.
# 2. It lets authorized users and processes do their job, by granting the permissions they need.
# 3. Authorized users and processes are allowed to take only a limited set of actions.
# 4. Everything else is denied.


ps axZ

ls -Z /usr/sbin/sshd


id -Z

sudo semanage login -l


sudo semanage user -l

getenforce

