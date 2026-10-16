# Opening confirmation never settles or changes the Run.
execute unless data storage scr_tower:runtime p.run{phase:"cards"} unless data storage scr_tower:runtime p.run{phase:"safe"} unless data storage scr_tower:runtime p.run{phase:"cleared"} run return 0
execute unless data storage scr_tower:runtime nav{view:"run"} run return 0
data modify storage scr_tower:runtime nav.view set value "confirm_exit"
data modify storage scr_tower:runtime nav.page set value 0
return 1
