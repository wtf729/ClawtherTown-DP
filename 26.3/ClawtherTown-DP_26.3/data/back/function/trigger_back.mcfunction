execute if score @s back.cooldown matches 1.. run tellraw @s [{"text":"你的back冷却还剩 ","color":"red"},{"score":{"name":"@s","objective":"back.cooldown"},"color":"red"},{"text":" 秒!","color":"red"}]
execute unless score @s back.cooldown matches 1.. run function back:try_to_start_to_go_back
scoreboard players set @s back 0