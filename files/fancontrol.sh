#! /bin/sh

### BEGIN INIT INFO
# Provides:          fan.py
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting fan.py"
    /home/pi/bin/fan.py &
    ;;
  stop)
    echo "Stopping fancontrol.py"
    pkill -f /home/pi/bin/fan.py
    ;;
  *)
    echo "Usage: /etc/init.d/fancontrol.sh {start|stop}"
    exit 1
    ;;
esac

exit 0
