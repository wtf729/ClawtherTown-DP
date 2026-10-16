execute unless data storage scr_tower:runtime p.run{phase:"danger",waiver:1} run return 0
data modify storage scr_tower:runtime p.run.waiver set value 0
return run function scr_tower:continue/remove with storage scr_tower:runtime p.run
