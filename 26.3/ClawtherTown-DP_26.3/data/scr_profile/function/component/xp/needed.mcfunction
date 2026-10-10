# Input/output: @s scr_pf_tmp. Keep Vanilla's integer formula within range.
execute unless score @s scr_pf_tmp matches 0..238609310 run return 0
scoreboard players set #rate scr_pf_tmp 2
scoreboard players set #offset scr_pf_tmp 7
execute if score @s scr_pf_tmp matches 16..30 run scoreboard players set #rate scr_pf_tmp 5
execute if score @s scr_pf_tmp matches 16..30 run scoreboard players set #offset scr_pf_tmp -38
execute if score @s scr_pf_tmp matches 31.. run scoreboard players set #rate scr_pf_tmp 9
execute if score @s scr_pf_tmp matches 31.. run scoreboard players set #offset scr_pf_tmp -158
scoreboard players operation @s scr_pf_tmp *= #rate scr_pf_tmp
scoreboard players operation @s scr_pf_tmp += #offset scr_pf_tmp
return 1
