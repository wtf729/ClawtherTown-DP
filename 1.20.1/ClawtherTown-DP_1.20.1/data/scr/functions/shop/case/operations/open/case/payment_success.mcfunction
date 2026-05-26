scoreboard players operation @s mystic_coin -= @s shop_case_bill
tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"支付成功! ","color":"green"},{"text":"\n你支付了","color":"yellow"},{"score":{"name":"@s","objective":"shop_case_bill"},"color":"red"},{"text":"枚秘币","color":"red"},{"text":"! ","color":"yellow"},{"text":"你的余额为","color":"yellow"},{"score":{"name":"@s","objective":"mystic_coin"},"color":"green"},{"text":"枚秘币","color":"green"},{"text":"! ","color":"yellow"},{"text":"谢谢惠顾!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]}
scoreboard players set @s shop_case_bill 0


execute as @s[scores={shop_case_selected_item=100103,shop_case_amount=1}] at @s run function scr:case/open/case/clawther_case
execute as @s[scores={shop_case_selected_item=100103,shop_case_amount=2..}] at @s run function scr:case/open/case/fast/open/clawther_case