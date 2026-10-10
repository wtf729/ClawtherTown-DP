# Require an exact, canonical item roundtrip before any live slot is touched.
# Nested loot ItemStacks may omit count=1. The display ItemStack codec writes it explicitly.
# Normalize only this known default, retaining strict comparison of all components and other counts.
execute unless data storage scr_mail:runtime work.expected.count run data modify storage scr_mail:runtime work.expected.count set value 1
item override entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents with minecraft:air
data modify entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item set from storage scr_mail:runtime work.expected
execute unless data entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item.id run return 0
data modify storage scr_mail:runtime work.check set from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.expected
execute if score #tmp scr_ml_n matches 1 run return 0
return 1
