
execute as @a[gamemode=!survival] unless score @s superop matches 1 run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"游戏模式","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"生存锁定目前处于","color":"aqua"},{"text":"开启","color":"gold","bold":true},{"text":"状态, ","color":"aqua"},{"text":"暂时无法使用其他模式!","color":"aqua"}]}


execute as @a[gamemode=!survival] unless score @s superop matches 1 run gamemode survival