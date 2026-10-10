tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"今天是","color":"yellow","bold":false},{"text":"xxx","color":"aqua","bold":false},{"text":"的生日! ","color":"yellow","bold":false},{"text":"让我们祝他生日快乐!","color":"green","bold":false}]

execute as XXX at @s run function scr:time/operation/special_birthday_player

scoreboard players set #server birthday_tommorrow 0