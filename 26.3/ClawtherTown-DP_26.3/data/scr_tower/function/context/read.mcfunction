$execute unless data storage scr_tower:players players."$(key)" run data modify storage scr_tower:players players."$(key)" set value {schema:1,next_run:1,day:-1,entries:0,history:{},run:{phase:"idle",id:0,floor:0,completed:0,gems:0,paid:0,pending:[]}}
$execute unless data storage scr_tower:players players."$(key)".uuid run data modify storage scr_tower:players players."$(key)".uuid set from entity @s UUID
$data modify storage scr_tower:runtime p set from storage scr_tower:players players."$(key)"
data modify storage scr_tower:runtime check set from storage scr_tower:runtime p.uuid
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from entity @s UUID
execute if score #different scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime p{schema:1} run return 0
return 1
