team join stage_2 @s[scores={stage=2..}]
tellraw @s[scores={stage=2..}] ["",{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"已将你的称号切换至","color":"yellow"},{"translate":"team.scr.stage_2.prefix","color":"dark_green"},{"text":"!","color":"yellow"},{"text":"\n"},{"text":"这是你目前的名称样式: ","color":"aqua"},{"selector":"@s"}]
tellraw @s[scores={stage=..1}] [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你还未拥有这个称号! ","color":"red","bold":false},{"text":"获得称号需要灵魂等级达到","color":"yellow","bold":false},{"text":"5","color":"light_purple","bold":false},{"text":"级, 继续努力吧!","color":"yellow","bold":false}]
playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players set @s title 0