data modify storage scr_tower:runtime p.run.cards[].kind set value "reward"
execute store result storage scr_tower:runtime debug.index int 1 run scoreboard players get #debug_danger scr_tw
execute if score #debug_danger scr_tw matches 0..3 run function scr_tower:admin/force_slot with storage scr_tower:runtime debug
