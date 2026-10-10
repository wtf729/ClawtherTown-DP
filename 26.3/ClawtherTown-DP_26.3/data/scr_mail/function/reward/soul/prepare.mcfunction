item override entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents with minecraft:shulker_box[minecraft:container=[]]
execute store success score #ok scr_ml_ok run item modify entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents {type:"minecraft:set_contents",component:"minecraft:container",entries:[{type:"minecraft:loot_table",value:"scr:ingredients/soul"}]}
execute unless score #ok scr_ml_ok matches 1 run return 0
data remove storage scr_mail:runtime work.icon
data modify storage scr_mail:runtime work.icon set from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item.components."minecraft:container"[0].item
execute unless data storage scr_mail:runtime work.icon.id run return 0
data modify storage scr_mail:runtime work.icon.count set value 1
return 1
