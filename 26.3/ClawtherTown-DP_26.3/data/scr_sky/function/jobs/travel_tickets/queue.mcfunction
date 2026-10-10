execute unless data storage scr_sky:travel_tickets pending run data modify storage scr_sky:travel_tickets pending set value []
$data modify storage scr_sky:travel_tickets work.entry set value {x:$(x),z:$(z),owner:"$(owner)"}
execute store result score #fl_x scr_sk run data get storage scr_sky:travel_tickets work.entry.x
execute store result score #fl_z scr_sk run data get storage scr_sky:travel_tickets work.entry.z
scoreboard players set #fl_size scr_sk 16
scoreboard players operation #fl_x scr_sk /= #fl_size scr_sk
scoreboard players operation #fl_z scr_sk /= #fl_size scr_sk
scoreboard players operation #fl_x scr_sk *= #fl_size scr_sk
scoreboard players operation #fl_z scr_sk *= #fl_size scr_sk
execute store result storage scr_sky:travel_tickets work.entry.x int 1 run scoreboard players get #fl_x scr_sk
execute store result storage scr_sky:travel_tickets work.entry.z int 1 run scoreboard players get #fl_z scr_sk
function scr_sky:jobs/travel_tickets/append with storage scr_sky:travel_tickets work.entry
data remove storage scr_sky:travel_tickets work
