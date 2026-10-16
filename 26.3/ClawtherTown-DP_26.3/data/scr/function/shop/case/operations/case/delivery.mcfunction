execute unless function scr:shop/policy/box_ready run return 0
scoreboard players set @s scr_delivered 0
execute as @s[scores={shop_case_amount=0}] run scoreboard players set @s shop_case_item_paid 0
execute as @s[scores={shop_case_amount=0}] run tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"所有货物均已交付完成!","color":"green","bold":false}]
execute as @s[scores={shop_case_amount=0}] run playsound scr:ui.eft_trade ambient @s ~ ~ ~

execute if entity @s[scores={shop_case_item_paid=100101}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:case/case/case_clawther_case

execute if score @s scr_delivered matches 1.. run scoreboard players remove @s[scores={shop_case_amount=1..}] shop_case_amount 1

execute unless score @s shop_case_item_paid matches 1.. run scoreboard players reset @s scr_box_pf
