# Called at a footprint corner, immediately below the feet. Engine support category, not a material allow-list.
execute unless loaded ~ ~ ~ run return 0
scoreboard players set #support_match scr_sk 0
execute store success score #support_match scr_sk run execute if block ~ ~ ~ #minecraft:entities_can_teleport_to
execute unless score #support_match scr_sk matches 1 run return 0
execute if block ~ ~ ~ #scr_sky:unsafe_floor run return 0
# Shapes extending into the feet cell or with an open vertical support are unsuitable here.
execute if block ~ ~ ~ #minecraft:fences run return 0
execute if block ~ ~ ~ #minecraft:walls run return 0
execute if block ~ ~ ~ #minecraft:doors run return 0
execute if block ~ ~ ~ #minecraft:fence_gates run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run return 0
return 1
