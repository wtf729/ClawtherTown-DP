execute store result score @s shop_key_amount run scoreboard players get @s shop_affordable_amount
execute store result score @s shop_key_bill run scoreboard players get @s shop_key_unit_price
scoreboard players operation @s shop_key_bill *= @s shop_key_amount


execute as @s[scores={shop_case_bill=0}] run function scr:shop/case/operations/open/case/payment_zero
execute as @s[scores={shop_key_item_paid=1..,shop_case_bill=1..}] run function scr:shop/case/operations/payment_fail_conflict
execute as @s[scores={shop_key_item_paid=0,shop_case_bill=1..}] if score @s mystic_coin >= @s shop_key_bill run function scr:shop/case/operations/key/payment_success
execute as @s[scores={shop_key_item_paid=0,shop_case_bill=1..}] if score @s mystic_coin < @s shop_key_bill run function scr:shop/case/operations/key/payment_fail

scoreboard players set @s shop 0