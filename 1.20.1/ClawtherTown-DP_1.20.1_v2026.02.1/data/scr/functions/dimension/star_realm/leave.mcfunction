tellraw @s[gamemode=adventure] {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你已离开星辰之地，恢复为生存模式!","color":"white"}]}

gamemode survival @s[gamemode=adventure]
attribute @s minecraft:max_health modifier remove scr:star_realm.max_health
effect give @s minecraft:regeneration 10 2 true
effect give @s minecraft:instant_health 1 255 true
effect give @s minecraft:resistance 10 255 true