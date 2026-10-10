execute unless data storage scr_profile:runtime work.target.ender_chest run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/ender_chest/stage
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.check set value []
execute if data entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] item.components."minecraft:container" run data modify storage scr_profile:runtime work.check set from entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] item.components."minecraft:container"
execute store success score @s scr_pf_tmp run data modify storage scr_profile:runtime work.check set from storage scr_profile:runtime work.target.ender_chest
execute if score @s scr_pf_tmp matches 1 run return 0
execute store result score @s scr_pf_tmp if slots entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] scr_profile:adapter_contents
execute if score @s scr_pf_tmp matches 28.. run return 0
return 1
