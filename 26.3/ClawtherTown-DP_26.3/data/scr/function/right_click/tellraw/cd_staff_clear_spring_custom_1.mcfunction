execute store result score @s cd run scoreboard players get @s cd_staff_clear_spring_custom_1
scoreboard players operation @s cd /= #second cd_second


tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_clear_spring_custom_1","color":"light_purple","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖尚未准备就绪! ","color":"red"},{"text":"冷却时间剩余 ","color":"gold"},{"score":{"name":"@s","objective":"cd"},"color":"light_purple"},{"text":" 秒!","color":"gold"}]}