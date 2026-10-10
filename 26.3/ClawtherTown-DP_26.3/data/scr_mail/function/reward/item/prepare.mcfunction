# Canonicalize a trusted fixed ItemStack using the actual engine codec, never player NBT.
item override entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents with minecraft:air
data modify entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item set from storage scr_mail:runtime work.entry.parameters.stack
execute unless data entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item.id run return 0
execute store success score #ok scr_ml_ok run item modify entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents {type:"minecraft:sequence",functions:[]}
execute unless score #ok scr_ml_ok matches 1 run return 0
# Missing serialized count means one item, not a failed snapshot.
data modify storage scr_mail:runtime work.check set value 1
data modify storage scr_mail:runtime work.check set from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item.count
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.entry.parameters.stack.count
execute if score #tmp scr_ml_n matches 1 run return 0
data modify storage scr_mail:runtime work.check set from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item.id
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.entry.parameters.stack.id
execute if score #tmp scr_ml_n matches 1 run return 0
data modify storage scr_mail:runtime work.payload set value [{slot:0,item:{}}]
data modify storage scr_mail:runtime work.payload[0].item set from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item
return 1
