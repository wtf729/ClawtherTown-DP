function homes:rotate/players
execute store result score #homes homes.dummy run data get storage homes:storage players[-1].homes
execute if score #homes homes.dummy matches 0 run tellraw @s {"text":"你还没有设置过home传送点!","color":"red"}
execute unless score #homes homes.dummy matches 0 run function homes:list_homes
scoreboard players set @s homes 0
function scr_task:event/homes_opened
