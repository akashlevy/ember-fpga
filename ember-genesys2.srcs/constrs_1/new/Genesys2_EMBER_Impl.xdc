## Create waivers
create_waiver -type DRC -id {RTSTAT-10} -user "akashl" -desc "No routable loads on some debug core stuff"
create_waiver -type METHODOLOGY -id {PDRC-190} -user "akashl" -desc "Debug hub placement issue" -objects [get_cells { dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD*/stat_reg_reg[*] }]
