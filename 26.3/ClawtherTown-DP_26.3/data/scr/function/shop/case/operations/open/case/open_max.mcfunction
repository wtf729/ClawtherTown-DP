# Opening requests never write purchase delivery state.
scoreboard players set @s shop 0
execute unless function scr:case/open/can_start run return 0
execute unless score @s shop_case_selected_item matches 100103 run return run function scr:shop/invalid_request
execute unless score @s shop_case_unit_price matches 1.. run return run function scr:shop/invalid_request
scoreboard players operation @s scr_open_amount = @s mystic_coin
scoreboard players operation @s scr_open_amount /= @s shop_case_unit_price
execute store result score @s scr_open_bill run scoreboard players get @s shop_case_unit_price
scoreboard players operation @s scr_open_bill *= @s scr_open_amount


execute as @s[scores={scr_open_bill=0}] run function scr:shop/case/operations/open/case/payment_zero
execute as @s[scores={cd_case=1..,scr_open_bill=1..}] if score @s mystic_coin >= @s scr_open_bill at @s run function scr:right_click/tellraw/cd_case
execute as @s[scores={cd_case=0,scr_open_bill=1..}] if score @s mystic_coin >= @s scr_open_bill at @s run function scr:shop/case/operations/open/case/payment_success
execute as @s[scores={cd_case=0,scr_open_bill=1..}] if score @s mystic_coin < @s scr_open_bill run function scr:shop/case/operations/open/case/payment_fail


scoreboard players set @s shop 0
