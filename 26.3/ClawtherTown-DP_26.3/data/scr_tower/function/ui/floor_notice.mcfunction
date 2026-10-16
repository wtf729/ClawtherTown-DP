execute store result score #ui_floor scr_tw run data get storage scr_tower:runtime p.run.floor
execute unless score #ui_floor scr_tw matches 1..60 run return run function scr_tower:ui/text/wallet_line with storage scr_tower:runtime text_args
scoreboard players set #ui_five scr_tw 5
scoreboard players operation #ui_remainder scr_tw = #ui_floor scr_tw
scoreboard players operation #ui_remainder scr_tw %= #ui_five scr_tw
execute if score #ui_remainder scr_tw matches 0 run function scr_tower:ui/text/wallet_line with storage scr_tower:runtime text_args
execute if score #ui_remainder scr_tw matches 0 run return run data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.jackpot_safe",color:"gold"},width:380}
scoreboard players operation #ui_next_bonus scr_tw = #ui_floor scr_tw
scoreboard players operation #ui_next_bonus scr_tw /= #ui_five scr_tw
scoreboard players operation #ui_next_bonus scr_tw *= #ui_five scr_tw
scoreboard players add #ui_next_bonus scr_tw 5
data modify storage scr_tower:runtime floor_notice set value {floor:0,wallet:0}
execute store result storage scr_tower:runtime floor_notice.floor int 1 run scoreboard players get #ui_next_bonus scr_tw
data modify storage scr_tower:runtime floor_notice.wallet set from storage scr_tower:runtime wallet
return run function scr_tower:ui/text/next_bonus with storage scr_tower:runtime floor_notice
