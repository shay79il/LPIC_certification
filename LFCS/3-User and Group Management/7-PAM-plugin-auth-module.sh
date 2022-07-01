#############
# Using 'su'
#############

# PAM related directories
ls /etc/pam.d

# See manual for pam
man pam.conf

# See manual for pam + TAB
man pam # + TAB (without space after the pam)

# module-type  |  module-control  |   module-name  |  module-arguments
# module-type can be
#   - account - take some actions related to the user account (e.g. prevent the user to login after 5pm)
#   - auth    - used to identify a user or a program
#   - password - used to update a password or secret key
#   - session  - prepare the user session (e.g. write to some log file that user login successfully)
####################
# module-control can be
#   - required  - condition checked but we can move to the next auth
#   - requisite - condition MUST be approved in order to continue
#   - optional
#   - include
#   - sufficient
####################
# module-name
####################
# module-arguments
#   - trust
#   - etc
####################














