scoreboard players set @s shop_key_amount 1
execute store result score @s shop_key_bill run scoreboard players get @s shop_key_unit_price
scoreboard players operation @s shop_key_bill *= @s shop_key_amount

execute as @s[scores={shop_key_item_paid=1..}] run function scr:shop/case/operations/payment_fail_conflict
execute as @s[scores={shop_key_item_paid=0}] if score @s mystic_coin >= @s shop_key_bill run function scr:shop/case/operations/key/payment_success
execute as @s[scores={shop_key_item_paid=0}] if score @s mystic_coin < @s shop_key_bill run function scr:shop/case/operations/key/payment_fail

scoreboard players set @s shop 0