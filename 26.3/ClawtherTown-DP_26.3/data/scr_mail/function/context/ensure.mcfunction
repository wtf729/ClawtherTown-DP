$execute unless data storage scr_mail:players players."$(key)" run data modify storage scr_mail:players players."$(key)" set value {schema:1,next_id:1,messages:[]}
$execute unless data storage scr_mail:players players."$(key)".uuid run data modify storage scr_mail:players players."$(key)".uuid set from entity @s UUID
$data modify storage scr_mail:runtime work.check set from storage scr_mail:players players."$(key)".uuid
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from entity @s UUID
execute if score #tmp scr_ml_n matches 1 run return 0
return 1
