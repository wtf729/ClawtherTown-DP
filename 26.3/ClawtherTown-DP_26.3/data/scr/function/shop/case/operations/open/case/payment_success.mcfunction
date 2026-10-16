execute unless function scr:shop/policy/request run return 0
execute unless function scr:case/open/try_lock run return 0
execute unless score @s shop_case_selected_item matches 100103 run return run function scr:case/open/abort_start
execute unless score @s scr_open_amount matches 1.. run return run function scr:case/open/abort_start
execute unless score @s scr_open_bill matches 1.. run return run function scr:case/open/abort_start
execute unless score @s mystic_coin >= @s scr_open_bill run return run function scr:case/open/abort_start
execute store success score @s scr_case_taken run scoreboard players operation @s mystic_coin -= @s scr_open_bill
execute unless score @s scr_case_taken matches 1 run return run function scr:case/open/abort_start
tellraw @s [{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.trader","fallback":"行商鹰"},{"text":"] ","color":"gold","bold":true},{"text":"支付成功! ","color":"green"},{"text":"\n你支付了","color":"yellow"},{"score":{"name":"@s","objective":"scr_open_bill"},"color":"red"},{"text":"枚秘币","color":"red"},{"text":"! ","color":"yellow"},{"text":"你的余额为","color":"yellow"},{"score":{"name":"@s","objective":"mystic_coin"},"color":"green"},{"text":"枚秘币","color":"green"},{"text":"! ","color":"yellow"},{"text":"谢谢惠顾!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]
scoreboard players set @s scr_open_bill 0


execute as @s[scores={shop_case_selected_item=100103,scr_open_amount=1}] at @s run function scr:case/open/case/clawther_case
execute as @s[scores={shop_case_selected_item=100103,scr_open_amount=2..}] at @s run function scr:case/open/case/fast/open/clawther_case
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken

# Bind only successfully started shop draws, after shared initialization.
execute if score @s case_opening matches 1 run scoreboard players operation @s scr_draw_pf = #profile scr_shop
execute if score @s case_opening_fast matches 1 run scoreboard players operation @s scr_draw_pf = #profile scr_shop
execute if score @s scr_draw_pf matches 1..5 run tag @s remove scr.case_item
