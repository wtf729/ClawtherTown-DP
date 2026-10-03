# Candidate cache: refresh every second, and again immediately before deletion.
# Item Age uses loaded game ticks. 300 ticks gives fresh drops 15 seconds at 20 TPS.
scoreboard players set #cleanup_scan timecounter 0
tag @e[type=minecraft:item,tag=scr.cleanup_candidate] remove scr.cleanup_candidate
scoreboard players set @e[type=minecraft:item] scr_clean_age 0
execute as @e[type=minecraft:item] store result score @s scr_clean_age run data get entity @s Age
execute as @e[type=minecraft:item,scores={scr_clean_age=300..},tag=!scr.clean_protected] unless data entity @s Item.components."minecraft:custom_data".homesData.markDimension unless data entity @s Item.components."minecraft:custom_data".back_data.mark_dimension run tag @s add scr.cleanup_candidate
