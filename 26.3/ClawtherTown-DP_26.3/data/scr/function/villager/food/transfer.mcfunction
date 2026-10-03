# Count actual serialized inventory contents before/after engine insertion.
# Do not treat a successful Inventory append as proof that all food fitted.
execute unless entity @e[type=minecraft:villager,tag=scr.vfood_target,limit=1] run return 0
execute unless data entity @s Item.id run return 0
scoreboard players set #offered scr_vfood 1
execute if data entity @s Item.count store result score #offered scr_vfood run data get entity @s Item.count
execute unless score #offered scr_vfood matches 1.. run return 0
data modify storage scr:villager_food transfer.before set value []
data modify storage scr:villager_food transfer.before set from entity @e[type=minecraft:villager,tag=scr.vfood_target,limit=1] Inventory
# Official Java 26.3 villagers have eight slots. Reject unexpected layouts.
execute if data storage scr:villager_food transfer.before[8] run return 0
data modify storage scr:villager_food transfer.items set from storage scr:villager_food transfer.before
function scr:villager/food/sum_inventory
scoreboard players operation #before scr_vfood = #sum scr_vfood
scoreboard players set #injected scr_vfood 0
execute store success score #injected scr_vfood run data modify entity @e[type=minecraft:villager,tag=scr.vfood_target,limit=1] Inventory append from entity @s Item
execute unless score #injected scr_vfood matches 1 run return run function scr:villager/food/rollback
data modify storage scr:villager_food transfer.after set value []
data modify storage scr:villager_food transfer.after set from entity @e[type=minecraft:villager,tag=scr.vfood_target,limit=1] Inventory
execute if data storage scr:villager_food transfer.after[8] run return run function scr:villager/food/rollback
data modify storage scr:villager_food transfer.items set from storage scr:villager_food transfer.after
function scr:villager/food/sum_inventory
scoreboard players operation #accepted scr_vfood = #sum scr_vfood
scoreboard players operation #accepted scr_vfood -= #before scr_vfood
# Zero capacity or an inconsistent read must not consume the dropped stack.
execute if score #accepted scr_vfood matches 0 run return 0
execute unless score #accepted scr_vfood matches 1.. run return run function scr:villager/food/rollback
execute if score #accepted scr_vfood > #offered scr_vfood run return run function scr:villager/food/rollback
scoreboard players operation #remaining scr_vfood = #offered scr_vfood
scoreboard players operation #remaining scr_vfood -= #accepted scr_vfood
scoreboard players set #committed scr_vfood 0
execute store result storage scr:villager_food transfer.remaining int 1 run scoreboard players get #remaining scr_vfood
# Keep all item components, age, pickup delay and other entity data unchanged.
execute if score #remaining scr_vfood matches 1.. store success score #committed scr_vfood run data modify entity @s Item.count set from storage scr:villager_food transfer.remaining
execute if score #remaining scr_vfood matches 0 store success score #committed scr_vfood run kill @s
execute unless score #committed scr_vfood matches 1 run return run function scr:villager/food/rollback
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.5 1
return 1
