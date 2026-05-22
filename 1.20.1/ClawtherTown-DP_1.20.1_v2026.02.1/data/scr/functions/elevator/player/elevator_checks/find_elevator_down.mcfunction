## If block elevator
execute if block ~ ~ ~ #scr:elevator if block ~ ~1 ~ #scr:elevator_safe run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 75 normal
execute if block ~ ~ ~ #scr:elevator if block ~ ~1 ~ #scr:elevator_safe run tp @s ~ ~0.5 ~
execute if block ~ ~ ~ #scr:elevator if block ~ ~1 ~ #scr:elevator_safe run playsound scr:ambient.elevator_ding ambient @a ~ ~ ~ 0.7 1
execute if block ~ ~ ~ #scr:elevator if block ~ ~1 ~ #scr:elevator_safe run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 75 normal
## Recur unless block is elevator
execute unless block ~ ~ ~ #scr:elevator positioned ~ ~-1 ~ run function scr:elevator/player/elevator_checks/find_elevator_down

advancement grant @s only scr:elevator_used