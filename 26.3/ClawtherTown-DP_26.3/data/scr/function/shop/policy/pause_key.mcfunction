execute unless entity @s[tag=scr.shop_key_paused] run tellraw @s [{"text":"[","color":"gold","bold":true},{"translate":"character.scr.trader","fallback":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.shop.delivery_paused","fallback":"货物交付已暂停。返回购买时的区域后将继续交付。","color":"yellow","bold":false}]
tag @s add scr.shop_key_paused
return 0
