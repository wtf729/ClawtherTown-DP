# Preserve a paid order before accepting any new request.
scoreboard players set @s shop 0
execute if score @s shop_case_item_paid matches 1.. run return run function scr:shop/case/operations/payment_fail_conflict
execute unless score @s shop_case_selected_item matches 100101 run return run function scr:shop/invalid_request
execute unless score @s shop_case_unit_price matches 1.. run return run function scr:shop/invalid_request
scoreboard players operation @s shop_case_amount = @s mystic_coin
scoreboard players operation @s shop_case_amount /= @s shop_case_unit_price
scoreboard players operation @s shop_case_bill = @s shop_case_unit_price
scoreboard players operation @s shop_case_bill *= @s shop_case_amount
execute unless score @s shop_case_amount matches 1.. run return run function scr:shop/case/operations/case/payment_zero
execute if score @s mystic_coin >= @s shop_case_bill run return run function scr:shop/case/operations/case/payment_success
function scr:shop/case/operations/case/payment_fail
