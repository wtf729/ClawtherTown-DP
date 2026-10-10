execute unless dimension scr_sky:scanner run return 0
fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:air strict
scoreboard players set #nonair scr_sk 0
execute store result score #nonair scr_sk run fill 0 0 0 15 15 15 minecraft:air strict
