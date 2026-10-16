execute unless data storage scr_tower:runtime p.run{phase:"cards"} unless data storage scr_tower:runtime p.run{phase:"safe"} unless data storage scr_tower:runtime p.run{phase:"cleared"} run return 0
execute if data storage scr_tower:runtime p.run{debug:1} run return run function scr_tower:admin/debug_finish
data modify storage scr_tower:runtime p.run.phase set value "settling"
data modify storage scr_tower:runtime p.run.settlement set value "pending"
data modify storage scr_tower:runtime p.run.outbox set value []
data modify storage scr_tower:runtime remaining set from storage scr_tower:runtime p.run.pending
data modify storage scr_tower:runtime chunk set value []
scoreboard players set #chunk scr_tw 0
scoreboard players set #size scr_tw 0
function scr_tower:mail/build
execute store result score #ok scr_tw run function scr_tower:save
execute unless score #ok scr_tw matches 1 run return 0
return run function scr_tower:mail/retry
