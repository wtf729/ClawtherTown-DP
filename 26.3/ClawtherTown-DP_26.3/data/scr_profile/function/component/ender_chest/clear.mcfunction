execute store success score @s scr_pf_tmp run item override entity @s scr_profile:ender_chest with minecraft:air
execute unless score @s scr_pf_tmp matches 1 run return 0
execute if items entity @s scr_profile:ender_chest * run return 0
return 1
