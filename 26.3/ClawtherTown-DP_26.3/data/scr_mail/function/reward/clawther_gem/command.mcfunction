$execute store success score #business scr_ml_n run scoreboard players add @s clawther_gem_add $(amount)
execute unless score #business scr_ml_n matches 1 run return 0
execute store result score #business scr_ml_n run function scr:clawther_gem/reward
execute unless score #business scr_ml_n matches 1 run return 0
return 1
