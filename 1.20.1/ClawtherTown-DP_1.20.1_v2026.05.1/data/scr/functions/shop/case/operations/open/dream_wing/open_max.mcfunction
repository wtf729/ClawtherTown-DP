scoreboard players operation @s shop_case_amount = @s dream_wing

execute as @s[scores={dream_wing=0}] run tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"开箱失败! ","color":"red"},{"text":"\n你一件","color":"yellow"},{"text":"幻梦翎片","color":"green"},{"text":"都没有! ","color":"yellow"},{"text":"\n看来你得继续努力了!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]}
execute as @s[scores={dream_wing=0}] run playsound minecraft:entity.villager.no ambient @s ~ ~ ~

execute as @s[scores={dream_wing=1..}] if score @s dream_wing < @s shop_case_amount run tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"开箱失败! ","color":"red"},{"text":"\n你现在只有","color":"yellow"},{"score":{"name":"@s","objective":"dream_wing"},"color":"green"},{"text":"件幻梦翎片","color":"green"},{"text":"! ","color":"yellow"},{"text":"无法支付","color":"yellow"},{"score":{"name":"@s","objective":"shop_case_amount"},"color":"red"},{"text":"件幻梦翎片","color":"red"},{"text":"的账单! ","color":"yellow"},{"text":"\n看来你得继续努力了!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]}
execute as @s[scores={dream_wing=1..}] if score @s dream_wing < @s shop_case_amount run playsound minecraft:entity.villager.no ambient @s ~ ~ ~

execute as @s[scores={dream_wing=1..}] if score @s dream_wing >= @s shop_case_amount if entity @s[scores={cd_case=1..}] at @s run function scr:right_click/tellraw/cd_case
execute as @s[scores={dream_wing=1..}] if score @s dream_wing >= @s shop_case_amount if entity @s[scores={cd_case=0}] at @s run function scr:shop/case/operations/open/dream_wing/payment_success


scoreboard players set @s shop 0