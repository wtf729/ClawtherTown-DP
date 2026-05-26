execute if block ~ ~ ~ #scr:elevator_activator if block ~ ~1 ~ #scr:elevator run execute at @s align xyz positioned ~0.5 ~1.5 ~0.5 run function scr:elevator/player/elevator_checks/find_elevator_up
#Recur unless block is activator
execute unless block ~ ~ ~ #scr:elevator_activator positioned ~ ~-1 ~ run function scr:elevator/player/elevator_checks/manual/up_execute