execute store result score @s scr_pf_ok run function scr_profile:component/inventory/stage
execute unless score @s scr_pf_ok matches 1 run return 0
# Empty source lists are rejected by /item from, so explicitly clear an empty snapshot.
execute unless data storage scr_profile:runtime work.target.inventory[0] run return run function scr_profile:component/inventory/clear
execute store success score @s scr_pf_tmp run item override entity @s scr_profile:inventory from entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] scr_profile:adapter_contents
execute unless score @s scr_pf_tmp matches 1 run return 0
return 1
