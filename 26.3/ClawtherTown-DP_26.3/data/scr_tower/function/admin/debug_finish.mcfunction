data modify storage scr_tower:runtime p.run.phase set value "settled"
data modify storage scr_tower:runtime p.run.settlement set value "debug_only"
return run function scr_tower:save
