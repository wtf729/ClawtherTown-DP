execute unless function scr:shop/policy/buy_ready run return 0
scoreboard players set @s scr_delivered 0
execute if score @s shop_buy_amount matches 0 if score @s shop_buy_item_paid matches 101..106 run function scr_task:event/trade_finished
execute as @s[scores={shop_buy_amount=0}] run scoreboard players set @s shop_buy_item_paid 0
execute as @s[scores={shop_buy_amount=0}] run tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"所有货物均已交付完成!","color":"green","bold":false}]
execute as @s[scores={shop_buy_amount=0}] run playsound scr:ui.eft_trade ambient @s ~ ~ ~

execute if entity @s[scores={shop_buy_item_paid=101}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:ingredients/rare_coal
execute if entity @s[scores={shop_buy_item_paid=102}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:ingredients/rare_copper_ingot
execute if entity @s[scores={shop_buy_item_paid=103}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:ingredients/rare_iron_ingot
execute if entity @s[scores={shop_buy_item_paid=104}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:ingredients/rare_gold_ingot
execute if entity @s[scores={shop_buy_item_paid=105}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:ingredients/rare_diamond
execute if entity @s[scores={shop_buy_item_paid=106}] store result score @s scr_delivered run loot spawn ~ ~ ~ loot scr:ingredients/rare_emerald

execute if score @s scr_delivered matches 1.. run scoreboard players remove @s[scores={shop_buy_amount=1..}] shop_buy_amount 1

execute unless score @s shop_buy_item_paid matches 1.. run scoreboard players reset @s scr_buy_pf
