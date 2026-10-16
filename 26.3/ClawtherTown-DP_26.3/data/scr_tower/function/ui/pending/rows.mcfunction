execute unless score #view_index scr_tw < #row_count scr_tw run return 1
execute unless score #view_rows scr_tw matches ..5 run return 1
execute store result storage scr_tower:runtime view_index.index int 1 run scoreboard players get #view_index scr_tw
function scr_tower:ui/pending/row with storage scr_tower:runtime view_index
scoreboard players add #view_index scr_tw 1
scoreboard players add #view_rows scr_tw 1
return run function scr_tower:ui/pending/rows
