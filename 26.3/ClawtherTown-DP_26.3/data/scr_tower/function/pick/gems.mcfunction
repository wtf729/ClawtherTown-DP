execute store result score #gems scr_tw run data get storage scr_tower:runtime p.run.gems
execute store result score #amount scr_tw run data get storage scr_tower:runtime selected.reward.parameters.amount
scoreboard players operation #gems scr_tw += #amount scr_tw
execute store result storage scr_tower:runtime p.run.gems int 1 run scoreboard players get #gems scr_tw
