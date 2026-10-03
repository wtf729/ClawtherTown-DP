# One synchronous transfer per item. AI/world ticks cannot interleave its steps.
execute unless score #ready scr_vfood matches 1 run return 0
execute unless entity @s[type=minecraft:item] run return 0
execute unless items entity @s contents #scr:villager_food run return 0
function scr:villager/food/cleanup
execute unless entity @e[type=minecraft:villager,distance=..0.7] run return 0
tag @e[type=minecraft:villager,distance=..0.7,limit=1,sort=nearest] add scr.vfood_target
function scr:villager/food/transfer
function scr:villager/food/cleanup
