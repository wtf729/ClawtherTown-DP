scoreboard players set @s shop_buy_amount 5
execute store result score @s shop_bill run scoreboard players get @s shop_buy_unit_price
scoreboard players operation @s shop_bill *= @s shop_buy_amount

execute as @s[scores={shop_buy_item_paid=1..}] run function scr:shop/buy/operations/payment_fail_conflict
execute as @s[scores={shop_buy_item_paid=0}] if score @s clawther_coin >= @s shop_bill run function scr:shop/buy/operations/payment_success
execute as @s[scores={shop_buy_item_paid=0}] if score @s clawther_coin < @s shop_bill run function scr:shop/buy/operations/payment_fail

scoreboard players set @s shop 0