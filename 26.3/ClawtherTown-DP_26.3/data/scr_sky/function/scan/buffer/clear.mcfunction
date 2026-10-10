# The ONLY destructive target: fixed 16^3 buffer in a dedicated private dimension.
execute unless dimension scr_sky:scanner run return 0
execute unless loaded 0 0 0 run return 0
execute store result score #block_limit scr_sk run gamerule minecraft:max_block_modifications
execute unless score #block_limit scr_sk matches 4096.. run return 0
fill 0 0 0 15 15 15 minecraft:air strict
return 1
