scoreboard players operation @s clawther_coin -= @s shop_bill
function scr:clawther_coin/actionbar
tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"支付成功! ","color":"green"},{"text":"\n你支付了","color":"yellow"},{"score":{"name":"@s","objective":"shop_bill"},"color":"red"},{"text":"鹰翎币","color":"red"},{"text":"! ","color":"yellow"},{"text":"你的余额为","color":"yellow"},{"score":{"name":"@s","objective":"clawther_coin"},"color":"green"},{"text":"鹰翎币","color":"green"},{"text":"! ","color":"yellow"},{"text":"谢谢惠顾!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]}
scoreboard players set @s shop_bill 0

execute store result score @s shop_buy_item_paid run scoreboard players get @s shop_buy_selected_item



tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"正在交付货物, 请耐心等待!","color":"yellow"}]}