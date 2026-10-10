# Decode the saved component in an isolated display before touching any player slot.
data modify storage scr_profile:runtime work.adapter set value {id:"minecraft:shulker_box",count:1,components:{"minecraft:container":[]}}
data modify storage scr_profile:runtime work.adapter.components."minecraft:container" set from storage scr_profile:runtime work.target.inventory
data modify entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] item set from storage scr_profile:runtime work.adapter
execute unless data entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] item{id:"minecraft:shulker_box"} run return 0
return 1
