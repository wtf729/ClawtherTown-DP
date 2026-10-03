advancement grant @s only scr:teleport_used
execute if score @s scr_home_group = @s scr_home_call unless predicate scr:location/in_overworld run advancement grant @s only scr:teleport_used_dimension
