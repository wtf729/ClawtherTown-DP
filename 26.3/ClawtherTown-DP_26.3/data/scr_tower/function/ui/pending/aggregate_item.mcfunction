execute unless data storage scr_tower:runtime aggregate_reward.parameters.stack.id run return 0
data modify storage scr_tower:runtime aggregate_entry set value {signature:{},stack:{},quantity:1}
data modify storage scr_tower:runtime aggregate_entry.signature set from storage scr_tower:runtime aggregate_reward.parameters.stack
data remove storage scr_tower:runtime aggregate_entry.signature.count
data modify storage scr_tower:runtime aggregate_entry.stack set from storage scr_tower:runtime aggregate_reward.parameters.stack
data modify storage scr_tower:runtime aggregate_entry.stack.count set value 1
data modify storage scr_tower:runtime aggregate_entry.quantity set from storage scr_tower:runtime aggregate_reward.parameters.stack.count
scoreboard players set #aggregate_index scr_tw 0
execute store result score #matched scr_tw run function scr_tower:ui/pending/find
execute unless score #matched scr_tw matches 1 run data modify storage scr_tower:runtime aggregate append from storage scr_tower:runtime aggregate_entry
