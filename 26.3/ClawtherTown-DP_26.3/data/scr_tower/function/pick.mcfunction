execute unless data storage scr_tower:runtime p.run{phase:"cards"} unless data storage scr_tower:runtime p.run{phase:"safe"} run return 0
data remove storage scr_tower:runtime selected
function scr_tower:pick/read with storage scr_tower:runtime route
execute unless data storage scr_tower:runtime selected{removed:0} run return 0
execute if data storage scr_tower:runtime selected{kind:"danger"} if data storage scr_tower:runtime p.run{phase:"cards"} run return run function scr_tower:danger
execute unless data storage scr_tower:runtime selected{kind:"reward"} run return 0
execute unless data storage scr_tower:runtime selected.reward run return 0
data modify storage scr_tower:runtime p.run.pending append from storage scr_tower:runtime selected.reward
execute if data storage scr_tower:runtime selected.reward{handler:"clawther_gem"} run function scr_tower:pick/gems
data modify storage scr_tower:runtime p.run.completed set from storage scr_tower:runtime p.run.floor
data modify storage scr_tower:runtime p.run.phase set value "cleared"
execute store result score #ok scr_tw run function scr_tower:save
execute unless score #ok scr_tw matches 1 run return 0
function scr_tower:audio/reward
execute if data storage scr_tower:runtime p.run{floor:60} run return run function scr_tower:settle
return 1
