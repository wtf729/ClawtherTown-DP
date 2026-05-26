#shop_tick
execute as @a[scores={shop_buy_item_paid=1..}] at @s run function scr:shop/buy/operations/delivery
execute as @a[scores={shop_sell_item_sold=1..}] at @s run function scr:shop/sell/operations/sell_count
execute as @a[scores={shop_case_item_paid=1..}] at @s run function scr:shop/case/operations/case/delivery
execute as @a[scores={shop_key_item_paid=1..}] at @s run function scr:shop/case/operations/key/delivery