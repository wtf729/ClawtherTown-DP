execute in minecraft:overworld run setblock 0 319 0 chest
execute in minecraft:overworld run loot insert 0 319 0 loot scr:random/random100000
execute in minecraft:overworld store result score #random100000 scr_random run data get block 0 319 0 Items[0].components.minecraft:attribute_modifiers.[0].amount
execute in minecraft:overworld run setblock 0 319 0 air