team join title_special_3 @s[scores={title_special_3=1}]
execute if score @s title_special_3 matches 1 run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"已将你的称号切换至","color":"yellow"},{"translate":"team.scr.title_special_3.prefix","color":"gold"},{"text":"!","color":"yellow"},{"text":"\n"},{"text":"这是你目前的名称样式: ","color":"aqua"},{"selector":"@s"}]}
execute unless score @s title_special_3 matches 1 run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你还未拥有这个称号! ","color":"red"},{"text":"获得称号需要","color":"yellow"},{"text":"向神鹰祈祷","color":"red"},{"text":"! 继续努力吧!","color":"yellow"}]}
playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players set @s title 0