execute store result score @s cd run scoreboard players get @s cd_case
scoreboard players operation @s cd /= #second cd_second


tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你已经在开启物品了! ","color":"red"},{"text":"请等待 ","color":"gold"},{"score":{"name":"@s","objective":"cd"},"color":"light_purple"},{"text":" 秒!","color":"gold"}]}