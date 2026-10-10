execute unless data storage scr_mail:runtime work.entry.parameters.value run return 0
data modify storage scr_mail:runtime work.number set from storage scr_mail:runtime work.entry.parameters.value
execute store result score #ok scr_ml_ok run function scr_mail:number/read_int
execute unless score #ok scr_ml_ok matches 1 run return 0
execute unless score #number scr_ml_n matches 0..1000000 run return 0
scoreboard players set #valid scr_ml_n 0
execute if data storage scr_mail:runtime work.entry.parameters{objective:"clawther_coin"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.entry.parameters{objective:"mystic_coin"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.entry.parameters{objective:"dream_wing"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.entry.parameters{objective:"soul"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.entry.parameters{objective:"stage"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.entry.parameters{objective:"title_special_4"} run scoreboard players set #valid scr_ml_n 1
execute unless score #valid scr_ml_n matches 1 run return 0
execute if data storage scr_mail:runtime work.entry.parameters{operation:"add"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{operation:"set"} run return 1
return 0
