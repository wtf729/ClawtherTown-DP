# Only entry/next/debug may call this. Opening a Dialog never generates cards.
data modify storage scr_tower:runtime p.run.phase set value "building"
function scr_tower:save
data remove storage scr_tower:runtime fc
function scr_tower:generate/config with storage scr_tower:runtime p.run
execute unless data storage scr_tower:runtime fc{schema:2} run return 0
data modify storage scr_tower:runtime bonus_items set from storage scr_tower:runtime fc.bonus_items
data modify storage scr_tower:runtime p.run.cards set value []
scoreboard players set #danger scr_tw -1
scoreboard players set #forced scr_tw -1
execute if data storage scr_tower:runtime fc{safe:0} store result score #danger scr_tw run random value 0..3 scr_tower:positions
execute if data storage scr_tower:runtime fc{forced:1} store result score #forced scr_tw run random value 0..3 scr_tower:positions
scoreboard players set #i scr_tw 0
function scr_tower:generate/loop
execute store result score #count scr_tw run data get storage scr_tower:runtime p.run.cards
execute unless score #count scr_tw matches 4 run return 0
data modify storage scr_tower:runtime p.run.phase set value "cards"
return run function scr_tower:save
