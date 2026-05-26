execute store result score @s duration_hour_clawther_coin_double run scoreboard players get @s clawther_coin_double
scoreboard players operation @s duration_hour_clawther_coin_double /= #hour duration

execute store result score @s duration_minute_clawther_coin_double run scoreboard players get @s clawther_coin_double
execute store result score @s duration_calculate run scoreboard players get @s duration_hour_clawther_coin_double
scoreboard players operation @s duration_calculate *= #hour duration
scoreboard players operation @s duration_minute_clawther_coin_double -= @s duration_calculate
scoreboard players operation @s duration_minute_clawther_coin_double /= #minute duration

execute store result score @s duration_second_clawther_coin_double run scoreboard players get @s clawther_coin_double
execute store result score @s duration_calculate run scoreboard players get @s duration_hour_clawther_coin_double
scoreboard players operation @s duration_calculate *= #hour duration
scoreboard players operation @s duration_second_clawther_coin_double -= @s duration_calculate
execute store result score @s duration_calculate run scoreboard players get @s duration_minute_clawther_coin_double
scoreboard players operation @s duration_calculate *= #minute duration
scoreboard players operation @s duration_second_clawther_coin_double -= @s duration_calculate
scoreboard players operation @s duration_second_clawther_coin_double /= #second duration