# Requires a live UUID ticket for the safe phase and confirmation view.
execute unless data storage scr_tower:runtime p.run{phase:"cards"} unless data storage scr_tower:runtime p.run{phase:"safe"} unless data storage scr_tower:runtime p.run{phase:"cleared"} run return 0
execute unless data storage scr_tower:runtime nav{view:"confirm_exit"} run return 0
return run function scr_tower:settle
