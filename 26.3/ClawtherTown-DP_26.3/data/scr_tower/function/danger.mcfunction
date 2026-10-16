execute store result score #hazards scr_tw run data get storage scr_tower:runtime p.run.hazards
execute store result storage scr_tower:runtime p.run.hazards int 1 run scoreboard players add #hazards scr_tw 1
data modify storage scr_tower:runtime p.run.hit set from storage scr_tower:runtime route.index
scoreboard players operation #price_index scr_tw = #hazards scr_tw
scoreboard players remove #price_index scr_tw 1
execute if score #price_index scr_tw matches 7.. run scoreboard players set #price_index scr_tw 7
execute store result storage scr_tower:runtime price.index int 1 run scoreboard players get #price_index scr_tw
function scr_tower:danger/price with storage scr_tower:runtime price
data modify storage scr_tower:runtime p.run.phase set value "danger"
execute store result score #danger_saved scr_tw run function scr_tower:save
execute if score #danger_saved scr_tw matches 1 run execute at @s run playsound scr:ui.eft_mission_failed ambient @s ~ ~ ~ 1 1
return run scoreboard players get #danger_saved scr_tw
