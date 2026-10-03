execute if entity @s[tag=homes.nameSet] run function homes:reset_home_name
tellraw @s[tag=!homes.nameSet] {"text":"你必须重命名'命名牌'才能为你的家命名!","color":"red"}