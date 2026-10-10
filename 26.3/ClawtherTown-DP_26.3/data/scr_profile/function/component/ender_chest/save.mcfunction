# Copy all slots including gaps into a fresh growable container component.
execute store result score @s scr_pf_tmp if slots entity @s scr_profile:ender_chest
execute unless score @s scr_pf_tmp matches 27 run return 0
item override entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] contents with minecraft:shulker_box[minecraft:container=[]]
execute store success score @s scr_pf_tmp run item replace entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] scr_profile:adapter_contents from entity @s scr_profile:ender_chest
execute unless score @s scr_pf_tmp matches 1 run return 0
data modify storage scr_profile:runtime work.sample.ender_chest set value []
execute if data entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] item.components."minecraft:container" run data modify storage scr_profile:runtime work.sample.ender_chest set from entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] item.components."minecraft:container"
return 1
