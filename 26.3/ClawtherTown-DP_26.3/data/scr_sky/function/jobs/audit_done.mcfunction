execute if data storage scr_sky:jobs active{kind:"audit_only"} run return run function scr_sky:jobs/audit_success
execute if data storage scr_sky:jobs active{kind:"transfer"} run data modify storage scr_sky:jobs active.phase set value "transfer"
data modify storage scr_sky:jobs active.wait set value 0
execute unless data storage scr_sky:jobs active{kind:"transfer"} run data modify storage scr_sky:jobs active.phase set value "allocate"
data modify storage scr_sky:jobs active.wait set value 0
