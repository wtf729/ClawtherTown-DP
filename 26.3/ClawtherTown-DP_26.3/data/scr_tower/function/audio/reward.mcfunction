# Called once after a successful pick save, before optional final settlement.
scoreboard players set #award_tier scr_tw 0
execute store result score #audio_rare scr_tw run data get storage scr_tower:runtime selected.rare
execute if score #audio_rare scr_tw matches 1.. run scoreboard players set #award_tier scr_tw 1
execute store result score #audio_floor scr_tw run data get storage scr_tower:runtime p.run.floor
scoreboard players set #audio_five scr_tw 5
scoreboard players operation #audio_floor scr_tw %= #audio_five scr_tw
execute if score #audio_floor scr_tw matches 0 if data storage scr_tower:runtime selected.reward{handler:"item"} run scoreboard players set #award_tier scr_tw 1
execute if data storage scr_tower:runtime selected.reward{handler:"clawther_gem"} run function scr_tower:audio/gem
execute if data storage scr_tower:runtime selected.reward{handler:"item"} run function scr_tower:audio/item with storage scr_tower:runtime selected.reward.parameters.stack
execute if score #award_tier scr_tw matches 0 run execute at @s run playsound scr:ui.cs_awarded_02 ambient @s ~ ~ ~ 1 1
execute if score #award_tier scr_tw matches 1 run execute at @s run playsound scr:ui.cs_awarded_03 ambient @s ~ ~ ~ 1 1
execute if score #award_tier scr_tw matches 2 run execute at @s run playsound scr:ui.cs_awarded_04 ambient @s ~ ~ ~ 1 1
