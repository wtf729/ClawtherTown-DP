execute unless data storage scr_tower:runtime p.run{phase:"danger"} run return 0
execute unless data storage scr_tower:runtime nav{view:"confirm_abandon"} run return 0
data modify storage scr_tower:runtime nav.view set value "run"
data modify storage scr_tower:runtime nav.page set value 0
return 1
