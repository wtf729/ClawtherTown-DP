function back:rotate/players
execute store success score #success back.dummy if data storage back:storage players[-1].back
execute if score #success back.dummy matches 0 run tellraw @s [{"text":"你没有可以返回的地点!","color":"red"}]
execute unless score #success back.dummy matches 0 run function back:start_to_go_back