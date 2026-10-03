# The caller supplies radius 10 (cookie) or 15 (staff), in tenths of a block.
execute unless score @s scr_home_radius matches 10 unless score @s scr_home_radius matches 15 run scoreboard players set @s scr_home_radius 15
scoreboard players add #next scr_home_call 1
scoreboard players operation @s scr_home_call = #next scr_home_call
execute store result storage scr:home_call call int 1 run scoreboard players get @s scr_home_call
function homes:rotate/players
scoreboard players set #home homes.dummy 1
function homes:rotate/homes
execute if score #remaining homes.dummy matches 0 run tellraw @s [{"text":"Home ","color":"red"},{"score":{"name":"#home","objective":"homes.dummy"},"color":"red"},{"text":"不存在!","color":"red"}]
execute unless score #remaining homes.dummy matches 0 run function scr:right_click/operations/home/tp_1
# This always runs, including missing Home, movement, and destination failure.
function scr:right_click/operations/home/cleanup with storage scr:home_call
