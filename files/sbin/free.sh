#!/bin/sh
sync && echo 3 > /proc/sys/vm/drop_caches
rm -rf /tmp/luci* /tmp/*.tmp
find /var/log -type f -exec sh -c '> {}' \;
