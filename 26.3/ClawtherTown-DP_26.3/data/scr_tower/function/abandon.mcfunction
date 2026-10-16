execute unless data storage scr_tower:runtime p.run{phase:"danger"} run return 0
data modify storage scr_tower:runtime p.run.lost set from storage scr_tower:runtime p.run.pending
data modify storage scr_tower:runtime p.run.lost_gems set from storage scr_tower:runtime p.run.gems
data modify storage scr_tower:runtime p.run.pending set value []
data modify storage scr_tower:runtime p.run.gems set value 0
data modify storage scr_tower:runtime p.run.phase set value "abandoned"
data modify storage scr_tower:runtime p.run.settlement set value "forfeited"
execute store result score #abandon_saved scr_tw run function scr_tower:save
execute if score #abandon_saved scr_tw matches 1 run execute at @s run playsound scr:ui.eft_kia ambient @s ~ ~ ~ 1 1
return run scoreboard players get #abandon_saved scr_tw
