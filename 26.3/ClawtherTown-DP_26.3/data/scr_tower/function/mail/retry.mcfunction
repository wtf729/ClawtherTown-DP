execute unless data storage scr_tower:runtime p.run{phase:"settling"} run return 0
scoreboard players set #part scr_tw 0
function scr_tower:mail/loop
execute if data storage scr_tower:runtime p.run.outbox[{state:"pending"}] run return 0
execute if data storage scr_tower:runtime p.run.outbox[{state:"sending"}] run return 0
execute if data storage scr_tower:runtime p.run.outbox[{state:"conflict"}] run return 0
data modify storage scr_tower:runtime p.run.phase set value "settled"
data modify storage scr_tower:runtime p.run.settlement set value "mailed"
# All receipts are confirmed. Persist the terminal phase before the one-time sound.
execute store result score #complete_saved scr_tw run function scr_tower:save
execute if score #complete_saved scr_tw matches 1 run execute at @s run playsound scr:ui.eft_mission_complete ambient @s ~ ~ ~ 1 1
return run scoreboard players get #complete_saved scr_tw
