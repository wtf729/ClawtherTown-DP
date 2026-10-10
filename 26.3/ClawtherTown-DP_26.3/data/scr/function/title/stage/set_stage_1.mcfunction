team join stage_1 @s
tellraw @s ["",{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"已将你的称号切换至","color":"yellow"},{"translate":"team.scr.stage_1.prefix","color":"green"},{"text":"!","color":"yellow"},{"text":"\n"},{"text":"这是你目前的名称样式: ","color":"aqua"},{"selector":"@s"}]
playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players set @s title 0