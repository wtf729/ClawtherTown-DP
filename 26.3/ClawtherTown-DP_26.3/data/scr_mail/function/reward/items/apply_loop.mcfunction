execute unless data storage scr_mail:runtime work.free[0] run return 0
data modify storage scr_mail:runtime work.ctx.slot set from storage scr_mail:runtime work.free[0].slot
data modify storage scr_mail:runtime work.expected set from storage scr_mail:runtime work.item_queue[0].item
execute store result score #ok scr_ml_ok run function scr_mail:reward/items/stage
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result score #ok scr_ml_ok run function scr_mail:reward/items/write with storage scr_mail:runtime work.ctx
execute unless score #ok scr_ml_ok matches 1 run return 0
scoreboard players add #delivered scr_ml_n 1
function scr_mail:reward/items/receipt with storage scr_mail:runtime work.ctx
data remove storage scr_mail:runtime work.item_queue[0]
data remove storage scr_mail:runtime work.free[0]
execute if data storage scr_mail:runtime work.item_queue[0] run return run function scr_mail:reward/items/apply_loop
return 1
