# Preserve a paid order before accepting any new request.
scoreboard players set @s shop 0
execute if score @s shop_key_item_paid matches 1.. run return run function scr:shop/case/operations/payment_fail_conflict
execute unless score @s shop_key_selected_item matches 100102 run return run function scr:shop/invalid_request
execute unless score @s shop_key_unit_price matches 1.. run return run function scr:shop/invalid_request
scoreboard players set @s shop_key_amount 10
scoreboard players operation @s shop_key_bill = @s shop_key_unit_price
scoreboard players operation @s shop_key_bill *= @s shop_key_amount
execute if score @s mystic_coin >= @s shop_key_bill run return run function scr:shop/case/operations/key/payment_success
function scr:shop/case/operations/key/payment_fail
