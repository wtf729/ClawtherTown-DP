data modify storage scr_mail:runtime work.expected set from storage scr_mail:runtime work.item_queue[0].item
execute store result score #ok scr_ml_ok run function scr_mail:reward/items/stage
execute unless score #ok scr_ml_ok matches 1 run return 0
scoreboard players add #needed scr_ml_n 1
execute if score #needed scr_ml_n matches 37.. run return 0
data remove storage scr_mail:runtime work.item_queue[0]
execute if data storage scr_mail:runtime work.item_queue[0] run return run function scr_mail:reward/items/preflight_loop
return 1
