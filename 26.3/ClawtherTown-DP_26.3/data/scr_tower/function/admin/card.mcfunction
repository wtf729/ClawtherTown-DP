# Only an unplayed administrator test floor can be edited; production runs rejected.
# execute as PLAYER at @s run function scr_tower:admin/card {slot:0,reward:"gem41"}
execute store result score #ok scr_tw run function scr_tower:context/open
execute unless score #ok scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime p.run{debug:1,phase:"cards"} run return 0
$scoreboard players set #slot scr_tw $(slot)
execute unless score #slot scr_tw matches 0..3 run return 0
data modify storage scr_tower:runtime debug_card set from storage scr_tower:runtime p.run
$data modify storage scr_tower:runtime debug_card.reward_id set value "$(reward)"
$data modify storage scr_tower:runtime debug_card.slot set value $(slot)
data remove storage scr_tower:runtime debug_reward
function scr_tower:admin/card_read with storage scr_tower:runtime debug_card
execute unless data storage scr_tower:runtime debug_reward.handler run return 0
function scr_tower:admin/card_write with storage scr_tower:runtime debug_card
function scr_tower:save
function scr_tower:ui/open_run
