#!/system/bin/sh

# If you're implementing this in a custom kernel/firmware,
# I suggest you use a different script name, and add a service
# to launch it from init.rc

# Launches SuperSU in daemon mode only on Android 4.3+.
# Nothing will happen on 4.2.x or older, unless SELinux+Enforcing.
# If you want to force loading the daemon, use "--daemon" instead

/system/xbin/daemonsu --daemon &
/system/xbin/supolicy --live "permissive zygote;"
/system/xbin/supolicy --live "permissive kernel;"
/system/xbin/supolicy --live "permissive init;"
/system/xbin/supolicy --live "permissive su;"
/system/xbin/supolicy --live "permissive init_shell;"
/system/xbin/supolicy --live "permissive shell;"
/system/xbin/supolicy --live "permissive servicemanager;"

# Some apps like to run stuff from this script as well, that will 
# obviously break root - in your code, just search this file
# for "install-recovery-2.sh", and if present, write there instead.

/system/etc/install-recovery-2.sh
