execute if block ~ ~ ~ #scr:elevator_activator if block ~ ~1 ~ #scr:elevator run execute if entity @s[type=player,predicate=scr:operation/is_sneaking,scores={elevator_cd=0}] run execute at @s align xyz positioned ~0.5 ~-1.5 ~0.5 run function scr:elevator/player/elevator_checks/find_elevator_down
execute if block ~ ~ ~ #scr:elevator_activator if block ~ ~1 ~ #scr:elevator run execute if entity @s[type=player,predicate=!scr:operation/is_sneaking,scores={elevator_cd=0}] run execute at @s align xyz positioned ~0.5 ~1.5 ~0.5 run function scr:elevator/player/elevator_checks/find_elevator_up
tag @s remove elevator_jump
#Recur unless block is activator
execute unless block ~ ~ ~ #scr:elevator_activator positioned ~ ~-1 ~ run function scr:elevator/player/elevator_checks/find_activator

scoreboard players set @s elevator_cd 10