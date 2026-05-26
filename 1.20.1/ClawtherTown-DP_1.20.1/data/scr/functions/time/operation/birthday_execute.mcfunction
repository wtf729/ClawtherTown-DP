tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"今天是","color":"yellow"},{"text":"未知玩家","color":"aqua"},{"text":"的生日! ","color":"yellow"},{"text":"让我们祝他生日快乐!","color":"green"}]}

execute as Aororo at @s run function scr:time/operation/birthday_player

scoreboard players set #server birthday_tommorrow 0