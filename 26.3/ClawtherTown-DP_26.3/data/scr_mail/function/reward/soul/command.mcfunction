$execute store success score #business scr_ml_n run scoreboard players add @s soul_add $(amount)
execute unless score #business scr_ml_n matches 1 run return 0
execute store success score #business scr_ml_n run function scr:soul/reward
execute unless score #business scr_ml_n matches 1 run return 0
return 1
