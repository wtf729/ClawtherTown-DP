execute store result score @s duration_hour_soul_double run scoreboard players get @s soul_double
scoreboard players operation @s duration_hour_soul_double /= #hour duration

execute store result score @s duration_minute_soul_double run scoreboard players get @s soul_double
execute store result score @s duration_calculate run scoreboard players get @s duration_hour_soul_double
scoreboard players operation @s duration_calculate *= #hour duration
scoreboard players operation @s duration_minute_soul_double -= @s duration_calculate
scoreboard players operation @s duration_minute_soul_double /= #minute duration

execute store result score @s duration_second_soul_double run scoreboard players get @s soul_double
execute store result score @s duration_calculate run scoreboard players get @s duration_hour_soul_double
scoreboard players operation @s duration_calculate *= #hour duration
scoreboard players operation @s duration_second_soul_double -= @s duration_calculate
execute store result score @s duration_calculate run scoreboard players get @s duration_minute_soul_double
scoreboard players operation @s duration_calculate *= #minute duration
scoreboard players operation @s duration_second_soul_double -= @s duration_calculate
scoreboard players operation @s duration_second_soul_double /= #second duration