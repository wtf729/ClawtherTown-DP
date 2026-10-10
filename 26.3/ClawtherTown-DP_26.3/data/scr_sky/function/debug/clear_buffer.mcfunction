# Existing job must go through abort, not have its buffer stolen.
execute if data storage scr_sky:scan job run return run function scr_sky:debug/abort_scan
# No ticket is created here. Load is explicit, under administrator control.
execute in scr_sky:scanner unless loaded 0 0 0 run return 0
execute in scr_sky:scanner run function scr_sky:scan/buffer/clear
