execute unless function scr:shop/policy/request run return 0
# Preserve a paid order before accepting any new request.
scoreboard players set @s shop 0
execute if score @s shop_buy_item_paid matches 1.. run return run function scr:shop/buy/operations/payment_fail_conflict
execute unless score @s shop_buy_selected_item matches 101..106 run return run function scr:shop/invalid_request
execute unless score @s shop_buy_unit_price matches 1.. run return run function scr:shop/invalid_request
scoreboard players set @s shop_buy_amount 1
scoreboard players operation @s shop_bill = @s shop_buy_unit_price
scoreboard players operation @s shop_bill *= @s shop_buy_amount
execute if score @s clawther_coin >= @s shop_bill run return run function scr:shop/buy/operations/payment_success
function scr:shop/buy/operations/payment_fail
