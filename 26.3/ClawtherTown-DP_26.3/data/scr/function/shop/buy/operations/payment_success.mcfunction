execute unless function scr:shop/policy/request run return 0
scoreboard players operation @s scr_buy_pf = #profile scr_shop
scoreboard players operation @s clawther_coin -= @s shop_bill
function scr:clawther_coin/actionbar
tellraw @s [{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.trader","fallback":"行商鹰"},{"text":"] ","color":"gold","bold":true},{"text":"支付成功! ","color":"green"},{"text":"\n你支付了","color":"yellow"},{"score":{"name":"@s","objective":"shop_bill"},"color":"red"},{"text":"鹰翎币","color":"red"},{"text":"! ","color":"yellow"},{"text":"你的余额为","color":"yellow"},{"score":{"name":"@s","objective":"clawther_coin"},"color":"green"},{"text":"鹰翎币","color":"green"},{"text":"! ","color":"yellow"},{"text":"谢谢惠顾!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]
scoreboard players set @s shop_bill 0

execute store result score @s shop_buy_item_paid run scoreboard players get @s shop_buy_selected_item



tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"正在交付货物, 请耐心等待!","color":"yellow","bold":false}]
