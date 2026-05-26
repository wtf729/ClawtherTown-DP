execute unless predicate scr:location/in_protected_area if score @s clawther_coin <= #free death_loss run function scr:server_unique/death/death_free
execute unless predicate scr:location/in_protected_area if score @s clawther_coin > #free death_loss run function scr:server_unique/death/death_execute
execute if predicate scr:location/in_protected_area run function scr:server_unique/death/death_free_dimension


scoreboard players set @s death_trigger 0
scoreboard players set @s killed_by_player_trigger 0