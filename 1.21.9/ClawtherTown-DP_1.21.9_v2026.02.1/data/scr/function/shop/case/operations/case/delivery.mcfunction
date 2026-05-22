execute as @s[scores={shop_case_amount=0}] run scoreboard players set @s shop_case_item_paid 0
execute as @s[scores={shop_case_amount=0}] run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"所有货物均已交付完成!","color":"green"}]}
execute as @s[scores={shop_case_amount=0}] run playsound scr:ui.eft_trade ambient @s ~ ~ ~

execute as @s[scores={shop_case_item_paid=100101}] run loot spawn ~ ~ ~ loot scr:case/case/case_clawther_case

scoreboard players remove @s[scores={shop_case_amount=1..}] shop_case_amount 1