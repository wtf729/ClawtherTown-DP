data modify storage scr_sky:scan job.phase set value "abort"
# Never release the lock while a possibly dirty buffer is still unloaded.
execute in scr_sky:scanner unless loaded 0 0 0 run function scr_sky:scan/buffer/ticket
execute in scr_sky:scanner unless loaded 0 0 0 run return 0
data modify storage scr_sky:scan job.outcome set value "aborted"
function scr_sky:scan/finish
