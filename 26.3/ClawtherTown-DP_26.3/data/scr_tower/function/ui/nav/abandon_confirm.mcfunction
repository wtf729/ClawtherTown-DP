# A current UUID ticket must match Run, floor, danger phase and confirmation view.
execute unless data storage scr_tower:runtime p.run{phase:"danger"} run return 0
execute unless data storage scr_tower:runtime nav{view:"confirm_abandon"} run return 0
return run function scr_tower:abandon
