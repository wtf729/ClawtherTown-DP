execute if score @s case_opening_luck matches 1..260 run scoreboard players set @s case_opening_fast_wait 100
execute if score @s case_opening_luck matches 261..910 run scoreboard players set @s case_opening_fast_wait 100
execute if score @s case_opening_luck matches 911..4110 run scoreboard players set @s case_opening_fast_wait 40
execute if score @s case_opening_luck matches 4111..20090 run scoreboard players set @s case_opening_fast_wait 20
execute if score @s case_opening_luck matches 20091..100000 run scoreboard players set @s case_opening_fast_wait 10