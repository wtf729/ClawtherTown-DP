scoreboard players set #counted scr_sk 0
execute unless dimension scr_sky:scanner run return 0
execute unless loaded 0 0 0 run return 0
scoreboard players set #section_value scr_sk 0
# Zero wins; higher positive tag wins overlaps. Each block is destroyed only once.
fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:value_0 strict
scoreboard players set #count scr_sk 0
execute store result score #count scr_sk run fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:value_1000 strict
scoreboard players set #weight scr_sk 1000
scoreboard players operation #count scr_sk *= #weight scr_sk
scoreboard players operation #section_value scr_sk += #count scr_sk
scoreboard players set #count scr_sk 0
execute store result score #count scr_sk run fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:value_500 strict
scoreboard players set #weight scr_sk 500
scoreboard players operation #count scr_sk *= #weight scr_sk
scoreboard players operation #section_value scr_sk += #count scr_sk
scoreboard players set #count scr_sk 0
execute store result score #count scr_sk run fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:value_100 strict
scoreboard players set #weight scr_sk 100
scoreboard players operation #count scr_sk *= #weight scr_sk
scoreboard players operation #section_value scr_sk += #count scr_sk
scoreboard players set #count scr_sk 0
execute store result score #count scr_sk run fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:value_25 strict
scoreboard players set #weight scr_sk 25
scoreboard players operation #count scr_sk *= #weight scr_sk
scoreboard players operation #section_value scr_sk += #count scr_sk
scoreboard players set #count scr_sk 0
execute store result score #count scr_sk run fill 0 0 0 15 15 15 minecraft:air replace #scr_sky:value_5 strict
scoreboard players set #weight scr_sk 5
scoreboard players operation #count scr_sk *= #weight scr_sk
scoreboard players operation #section_value scr_sk += #count scr_sk
scoreboard players set #count scr_sk 0
execute store result score #count scr_sk run fill 0 0 0 15 15 15 minecraft:air strict
scoreboard players operation #section_value scr_sk += #count scr_sk
scoreboard players set #counted scr_sk 1
