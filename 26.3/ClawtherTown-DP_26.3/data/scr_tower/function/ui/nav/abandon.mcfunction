# A first click is navigation only. Keep the authoritative Run in danger.
execute unless data storage scr_tower:runtime p.run{phase:"danger"} run return 0
execute unless data storage scr_tower:runtime nav{view:"run"} run return 0
data modify storage scr_tower:runtime nav.view set value "confirm_abandon"
data modify storage scr_tower:runtime nav.page set value 0
return 1
