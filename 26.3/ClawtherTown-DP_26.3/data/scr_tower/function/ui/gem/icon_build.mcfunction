execute unless entity @s[type=minecraft:item_display] run return 0
item override entity @s contents with minecraft:shulker_box[minecraft:container=[]]
execute store success score #ui_gem_icon scr_tw run item modify entity @s contents {type:"minecraft:set_contents",component:"minecraft:container",entries:[{type:"minecraft:loot_table",value:"scr:ingredients/clawther_gem"}]}
execute if score #ui_gem_icon scr_tw matches 1 run data modify storage scr_tower:ui gem_icon set from entity @s item.components."minecraft:container"[0].item
# Always dispose of this exact scratch entity, including failure; no global entity kill.
kill @s
return 1
