# Sum up to eight serialized stacks. An omitted count means one item.
scoreboard players set #sum scr_vfood 0
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[0].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[0].count
execute if data storage scr:villager_food transfer.items[0] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[1].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[1].count
execute if data storage scr:villager_food transfer.items[1] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[2].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[2].count
execute if data storage scr:villager_food transfer.items[2] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[3].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[3].count
execute if data storage scr:villager_food transfer.items[3] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[4].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[4].count
execute if data storage scr:villager_food transfer.items[4] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[5].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[5].count
execute if data storage scr:villager_food transfer.items[5] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[6].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[6].count
execute if data storage scr:villager_food transfer.items[6] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
scoreboard players set #slot scr_vfood 1
execute if data storage scr:villager_food transfer.items[7].count store result score #slot scr_vfood run data get storage scr:villager_food transfer.items[7].count
execute if data storage scr:villager_food transfer.items[7] run scoreboard players operation #sum scr_vfood += #slot scr_vfood
