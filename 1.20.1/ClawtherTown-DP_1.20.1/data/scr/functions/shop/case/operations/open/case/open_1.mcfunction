scoreboard players set @s shop_case_amount 1
execute store result score @s shop_case_bill run scoreboard players get @s shop_case_unit_price
scoreboard players operation @s shop_case_bill *= @s shop_case_amount

execute as @s[scores={cd_case=1..}] if score @s mystic_coin >= @s shop_case_bill at @s run function scr:right_click/tellraw/cd_case
execute as @s[scores={cd_case=0}] if score @s mystic_coin >= @s shop_case_bill at @s run function scr:shop/case/operations/open/case/payment_success
execute as @s[scores={cd_case=0}] if score @s mystic_coin < @s shop_case_bill run function scr:shop/case/operations/open/case/payment_fail


scoreboard players set @s shop 0