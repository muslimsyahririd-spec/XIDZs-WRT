#!/bin/sh
sync && echo 3 > /proc/sys/vm/drop_caches
rm -rf /tmp/luci* /tmp/*.tmp
> /var/log/messages
> /var/log/syslog  
> /var/log/kern.log
/etc/init.d/uhttpd restart
