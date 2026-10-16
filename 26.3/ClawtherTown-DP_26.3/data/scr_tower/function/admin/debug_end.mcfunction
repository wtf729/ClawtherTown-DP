execute store result score #ok scr_tw run function scr_tower:context/open
execute unless score #ok scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime p.run{debug:1} run return 0
function scr_tower:admin/debug_finish
function scr_tower:ui/open_run
