scoreboard players set @s shop_case_amount 10
execute store result score @s shop_case_bill run scoreboard players get @s shop_case_unit_price
scoreboard players operation @s shop_case_bill *= @s shop_case_amount

execute as @s[scores={shop_case_item_paid=1..}] run function scr:shop/case/operations/payment_fail_conflict
execute as @s[scores={shop_case_item_paid=0}] if score @s mystic_coin >= @s shop_case_bill run function scr:shop/case/operations/case/payment_success
execute as @s[scores={shop_case_item_paid=0}] if score @s mystic_coin < @s shop_case_bill run function scr:shop/case/operations/case/payment_fail

scoreboard players set @s shop 0