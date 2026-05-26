team join stage_3 @s[scores={stage=3..}]
tellraw @s[scores={stage=3..}] {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"已将你的称号切换至","color":"yellow"},{"translate":"team.scr.stage_3.prefix","color":"dark_aqua"},{"text":"!","color":"yellow"},{"text":"\n"},{"text":"这是你目前的名称样式: ","color":"aqua"},{"selector":"@s"}]}
tellraw @s[scores={stage=..2}] {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你还未拥有这个称号! ","color":"red"},{"text":"获得称号需要灵魂等级达到","color":"yellow"},{"text":"20","color":"light_purple"},{"text":"级, 继续努力吧!","color":"yellow"}]}
playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players set @s title 0