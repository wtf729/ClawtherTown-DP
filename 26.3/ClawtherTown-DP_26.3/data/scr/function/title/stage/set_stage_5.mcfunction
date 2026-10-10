team join stage_5 @s[scores={stage=5..}]
tellraw @s[scores={stage=5..}] ["",{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"已将你的称号切换至","color":"yellow"},{"translate":"team.scr.stage_5.prefix","color":"light_purple"},{"text":"!","color":"yellow"},{"text":"\n"},{"text":"这是你目前的名称样式: ","color":"aqua"},{"selector":"@s"}]
tellraw @s[scores={stage=..4}] [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你还未拥有这个称号! ","color":"red","bold":false},{"text":"获得称号需要灵魂等级达到","color":"yellow","bold":false},{"text":"120","color":"light_purple","bold":false},{"text":"级, 继续努力吧!","color":"yellow","bold":false}]
playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players set @s title 0