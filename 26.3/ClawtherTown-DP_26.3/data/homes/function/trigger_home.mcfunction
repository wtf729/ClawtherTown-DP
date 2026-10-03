execute if score @s homes.cooldown matches 1.. run tellraw @s [{"text":"你的home冷却还剩 ","color":"red"},{"score":{"name":"@s","objective":"homes.cooldown"},"color":"red"},{"text":" 秒!","color":"red"}]
execute unless score @s homes.cooldown matches 1.. run function homes:try_to_start_to_go_home
scoreboard players set @s home 0