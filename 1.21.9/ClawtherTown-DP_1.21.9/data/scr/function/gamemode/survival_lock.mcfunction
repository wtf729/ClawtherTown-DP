
execute as @a[gamemode=creative] unless score @s superop matches 1 run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"生存锁定目前处于开启状态, ","color":"white"},{"text":"暂时无法使用创造模式!","color":"white"}]}


execute as @a[gamemode=creative] unless score @s superop matches 1 run gamemode survival