execute store result score @s shop_case_amount run scoreboard players get @s shop_affordable_amount
execute store result score @s shop_case_bill run scoreboard players get @s shop_case_unit_price
scoreboard players operation @s shop_case_bill *= @s shop_case_amount


execute as @s[scores={shop_case_bill=0}] run function scr:shop/case/operations/open/case/payment_zero
execute as @s[scores={cd_case=1..,shop_case_bill=1..}] if score @s mystic_coin >= @s shop_case_bill at @s run function scr:right_click/tellraw/cd_case
execute as @s[scores={cd_case=0,shop_case_bill=1..}] if score @s mystic_coin >= @s shop_case_bill at @s run function scr:shop/case/operations/open/case/payment_success
execute as @s[scores={cd_case=0,shop_case_bill=1..}] if score @s mystic_coin < @s shop_case_bill run function scr:shop/case/operations/open/case/payment_fail


scoreboard players set @s shop 0