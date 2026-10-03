# Restore only this villager inventory when the ground deduction cannot commit.
execute if data storage scr:villager_food transfer.before run data modify entity @e[type=minecraft:villager,tag=scr.vfood_target,limit=1] Inventory set from storage scr:villager_food transfer.before
return 0
