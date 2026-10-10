execute store result score @s cd run scoreboard players get @s cd_case
scoreboard players operation @s cd /= #second cd_second


tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你已经在开启物品了! ","color":"red","bold":false},{"text":"请等待 ","color":"gold","bold":false},{"score":{"name":"@s","objective":"cd"},"color":"light_purple","bold":false},{"text":" 秒!","color":"gold","bold":false}]