# Release only the synchronous reservation; never reset an existing opening.
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"开箱失败! 请检查余额和购买数量!","color":"red","bold":false}]
playsound minecraft:entity.villager.no ambient @s ~ ~ ~
return 0
