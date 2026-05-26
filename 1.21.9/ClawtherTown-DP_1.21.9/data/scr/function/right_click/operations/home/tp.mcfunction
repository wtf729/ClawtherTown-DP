function scr:advancements/technical/teleport_used



function homes:rotate/players
scoreboard players set #home homes.dummy 1
function homes:rotate/homes
execute if score #remaining homes.dummy matches 0 run tellraw @s [{"text":"Home ","color":"red"},{"score":{"name":"#home","objective":"homes.dummy"},"color":"red"},{"text":"不存在!","color":"red"}]
execute unless score #remaining homes.dummy matches 0 run function scr:right_click/operations/home/tp_1