execute unless data storage scr_sky:jobs active run return 0
data modify storage scr_sky:jobs active.error set value "admin_abort"
data modify storage scr_sky:jobs active.phase set value "recover"
data modify storage scr_sky:jobs active.wait set value 0
