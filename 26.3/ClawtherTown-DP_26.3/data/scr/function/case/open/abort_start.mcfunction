# Release only the synchronous reservation; never reset an existing opening.
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
tellraw @s {"text":"[神鹰] 开箱失败，请检查所需物品、余额和购买数量。","color":"red"}
playsound minecraft:entity.villager.no ambient @s ~ ~ ~
return 0
