execute if score @s homes.limit matches 0.. run scoreboard players operation #limit homes.dummy = @s homes.limit
execute unless score @s homes.limit matches 0.. run scoreboard players operation #limit homes.dummy = #limit homes.config
execute if score #homes homes.dummy < #limit homes.dummy run function homes:add_home
execute unless score #homes homes.dummy < #limit homes.dummy run tellraw @s [{"text":"你最多只能设置 ","color":"red"},{"score":{"name":"#limit","objective":"homes.dummy"},"color":"red"},{"text":" 个传送点!","color":"red"}]