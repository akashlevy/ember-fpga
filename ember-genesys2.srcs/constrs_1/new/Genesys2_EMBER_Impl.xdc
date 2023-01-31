set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sclk_in_IBUF]

create_waiver -type DRC -id {RTSTAT-10} -user "akashl" -desc "No routable loads on some debug core stuff" -timestamp "Tue Jan 31 08:53:06 GMT 2023"
create_waiver -type DRC -id {PLCK-12} -user "akashl" -desc "CLOCK_DEDICATED_ROUTE false warning" -timestamp "Tue Jan 31 08:53:06 GMT 2023"

create_waiver -type METHODOLOGY -id {PDRC-190} -user "akashl" -desc "Chip level problems with debug" -timestamp "Tue Jan 31 08:53:06 GMT 2023"

