# Completion for tcping (https://github.com/pouriyajamshidi/tcping)

complete -c tcping -s 4 -d "only use IPv4"
complete -c tcping -s 6 -d "only use IPv6"
complete -c tcping -s I -a "$(ls /sys/class/net/)" -x -d "Interface name to use for sending probes"
complete -c tcping -s c -d "stop after <n> probes, regardless of the result. by default, no limit will be applied"
complete -c tcping -l db -d "path and file name to store tcping output to sqlite database"
complete -c tcping -s i -d "interval between sending probes. The default is one second"
complete -c tcping -s j -d "output in JSON format"
complete -c tcping -l pretty -d "use indentation when using json output format. No effect without the '-j' flag"
complete -c tcping -s r -d "retry resolving target's hostname after <n> number of failed probes"
complete -c tcping -s t -d "time to wait for a response, in seconds."
complete -c tcping -s u -d "check for updates"
complete -c tcping -s v -d "show version"
